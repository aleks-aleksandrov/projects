#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xgpio.h"
#include "xscugic.h"
#include "xil_exception.h"
#include "xscutimer.h"


#define INTC_DEVICE_ID XPAR_PS7_SCUGIC_0_DEVICE_ID
#define BTNS_DEVICE_ID XPAR_BTNS_DEVICE_ID
#define LEDS_DEVICE_ID XPAR_LEDS_DEVICE_ID

#define INTC_GPIO_INTERRUPT_ID XPAR_FABRIC_BTNS_IP2INTC_IRPT_INTR
#define BTN_INT XGPIO_IR_CH1_MASK


int count = 0;

XGpio LEDInst, BTNInst;
XScuGic INTCInst;

static int led_value = 0;
static int btn_value;

int flag;
static void TimerInst_Intr_handler(void *CallBackRef){
	XScuTimer *This_TimerInst = (XScuTimer *) CallBackRef;

	if (XScuTimer_IsExpired(This_TimerInst)){
		XScuTimer_ClearInterruptStatus(This_TimerInst);

		if(flag){
			XGpio_DiscreteWrite(&LEDInst, 1, 0);
			flag = 0;
		}else{
			XGpio_DiscreteWrite(&LEDInst, 1, led_value);
			flag = 1;
		}
		count++;
		printf(" (%d) seconds\n\r", count);//print seconds to uart
	}
}
void BTN_Intr_Handler(void *InstancePtr){
	// Disable GPIO interrupts
	XGpio_InterruptDisable(&BTNInst, BTN_INT);

	// Ignore additional button presses
	if ((XGpio_InterruptGetStatus(&BTNInst) & BTN_INT) !=BTN_INT) {
	return;
	}
	btn_value = XGpio_DiscreteRead(&BTNInst, 1);

	// Increment led_data with button value
	// btn[3] press to reset
	if(btn_value == 1){
		led_value = 1;
	}else if(btn_value == 2){
		led_value = 2;
	}else if(btn_value == 4){
		led_value = 4;
	}else if(btn_value == 8){
		led_value = 8;
	}

	XGpio_DiscreteWrite(&LEDInst, 1, led_value);
	(void) XGpio_InterruptClear(&BTNInst, BTN_INT);

	// Enable GPIO interrupts
	XGpio_InterruptEnable(&BTNInst, BTN_INT);
}

int main (void)
{
	init_platform();
	int status;

	/* Declare Instance and Configuaration*/
	XScuTimer TimerInst;
	XScuTimer_Config *Timer_Config;
	XScuGic INTCInst;
	XScuGic_Config *INTC_Config;
	//------------------------------Instantiate BTNS and LED-----------------------------------

	// Instantiate LEDInst
	status = XGpio_Initialize(&LEDInst, LEDS_DEVICE_ID);
	if(status != XST_SUCCESS) return XST_FAILURE;

	// Instantiate BTNInst
	status = XGpio_Initialize(&BTNInst, BTNS_DEVICE_ID);
	if(status != XST_SUCCESS) return XST_FAILURE;

	//----------------------------------------------BUTTONS------------------------------------------
	INTC_Config = XScuGic_LookupConfig(INTC_DEVICE_ID);
	// Instantiate Interrupt controller --- BUTTONS
	status = XScuGic_CfgInitialize(&INTCInst, INTC_Config, INTC_Config->CpuBaseAddress);
	if(status != XST_SUCCESS) return XST_FAILURE;

	Xil_ExceptionInit();
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler) XScuGic_InterruptHandler, &INTCInst);


	// Connect GPIO interrupt to handler
	status = XScuGic_Connect(&INTCInst, INTC_GPIO_INTERRUPT_ID, (Xil_ExceptionHandler) BTN_Intr_Handler, (void *)&BTNInst);
	XScuGic_Enable(&INTCInst, INTC_GPIO_INTERRUPT_ID);
	if(status != XST_SUCCESS) return XST_FAILURE;
	XGpio_InterruptEnable(&BTNInst, BTN_INT);
	XGpio_InterruptGlobalEnable(&BTNInst);
	Xil_ExceptionEnable();

	//----------------------------------------------TIMER----------------------------------------
	INTC_Config = XScuGic_LookupConfig(XPAR_PS7_SCUGIC_0_DEVICE_ID);
	/* Instantiate Interrupt Controller -- TIMER */
	status = XScuGic_CfgInitialize(&INTCInst, INTC_Config, INTC_Config->CpuBaseAddress);
	if(status != XST_SUCCESS) return XST_FAILURE;

	/* Instantiate XScuTimer */
	Timer_Config = XScuTimer_LookupConfig(XPAR_PS7_SCUTIMER_0_DEVICE_ID);
	status = XScuTimer_CfgInitialize(&TimerInst, Timer_Config, Timer_Config->BaseAddr);

	Xil_ExceptionInit();
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_IRQ_INT, (Xil_ExceptionHandler)XScuGic_InterruptHandler, &INTCInst);

	/* connect interrupt controller and TimerInst_Intr_handler*/
	status = XScuGic_Connect(&INTCInst, XPAR_SCUTIMER_INTR, (Xil_ExceptionHandler)TimerInst_Intr_handler, (void *)&TimerInst);
	XScuGic_Enable(&INTCInst, XPAR_SCUTIMER_INTR);
	if(status != XST_SUCCESS) return XST_FAILURE;
	XScuTimer_EnableInterrupt(&TimerInst);
	Xil_ExceptionEnable();

	/* XScuTimer clock is 1/2 cpu clock, i.e., one second */
	XScuTimer_LoadTimer(&TimerInst, XPAR_PS7_CORTEXA9_0_CPU_CLK_FREQ_HZ / 2);
	XScuTimer_EnableAutoReload(&TimerInst);
	XScuTimer_Start(&TimerInst);


	while(1);
	return 0;
}
