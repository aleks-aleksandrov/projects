#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xgpio.h"
#include "xscugic.h"
#include "xil_exception.h"
#include "xtmrctr.h"
#include "xscutimer.h"


#define BTNS_DEVICE_ID XPAR_BTNS_DEVICE_ID
#define LEDS_DEVICE_ID XPAR_LED_DEVICE_ID
#define TMR_DEVICE_ID XPAR_TMRCTR_0_DEVICE_ID

#define INTC_GPIO_INTERRUPT_ID XPAR_FABRIC_BTNS_IP2INTC_IRPT_INTR
#define INTC_TMR_INTERRUPT_ID XPAR_FABRIC_AXI_TIMER_0_INTERRUPT_INTR
#define INTC_DEVICE_ID XPAR_PS7_SCUGIC_0_DEVICE_ID
#define BTN_INT XGPIO_IR_CH1_MASK

XGpio  BTNInst, LEDInst;
XScuGic INTCInst;
XScuTimer TimerInst;

#define TMR_LOAD 4278190080*3 //0xFF000000 //4278190080*3

static int btn_value = 0, led_value = 0;

int is_slow = 1;

void BTN_Intr_Handler(void *InstancePtr){
	// Disable GPIO interrupts
	XGpio_InterruptDisable(&BTNInst, BTN_INT);

	// Ignore additional button presses
	if ((XGpio_InterruptGetStatus(&BTNInst) & BTN_INT) !=BTN_INT) {
	return;
	}
	btn_value = XGpio_DiscreteRead(&BTNInst, 1);

	if(btn_value == 1){//START
		led_value = 1;
		XScuTimer_Start(&TimerInst);
		printf("Button 1\n\r");

	}else if(btn_value == 2){//STOP
		led_value = 0;
		XScuTimer_Stop(&TimerInst);
		printf("Button 2\n\r");

	}else if(btn_value == 4 && is_slow){
		is_slow = 0;
		XScuTimer_Stop(&TimerInst);
		XScuTimer_LoadTimer(&TimerInst, XPAR_PS7_CORTEXA9_0_CPU_CLK_FREQ_HZ / 3);
		XScuTimer_Start(&TimerInst);
		printf("Button 3\n\r");
	}else if(btn_value == 8 && !is_slow){
		is_slow = 1;
		XScuTimer_Stop(&TimerInst);
		XScuTimer_LoadTimer(&TimerInst, XPAR_PS7_CORTEXA9_0_CPU_CLK_FREQ_HZ / 2);
		XScuTimer_Start(&TimerInst);
		printf("Button 4\n\r");
	}

	XGpio_DiscreteWrite(&LEDInst, 1, led_value);
	(void) XGpio_InterruptClear(&BTNInst, BTN_INT);

	// Enable GPIO interrupts
	XGpio_InterruptEnable(&BTNInst, BTN_INT);
}

int flag = 0;//led on

static void TimerInst_Intr_handler(void *CallBackRef){
	XScuTimer *This_TimerInst = (XScuTimer *) CallBackRef;

	if (XScuTimer_IsExpired(This_TimerInst)){
		XScuTimer_ClearInterruptStatus(This_TimerInst);
		printf("Timer out \n\r");
		if(flag){
			flag = 0;
			XGpio_DiscreteWrite(&LEDInst, 1, 0);
		}else{
			flag = 1;
			XGpio_DiscreteWrite(&LEDInst, 1, led_value);
		}
	}
}

int main()
{
	int status;

	/* Declare Instance and Configuaration*/
	XScuGic_Config *INTC_Config;

	//------------------------------Instantiate BTNS-----------------------------------
	// Instantiate BTNInst
	status = XGpio_Initialize(&BTNInst, BTNS_DEVICE_ID);
	if(status != XST_SUCCESS) return XST_FAILURE;

	//------------------------------Instantiate LEDS------------------------------------
	// Instantiate LEDInst
	status = XGpio_Initialize(&LEDInst, LEDS_DEVICE_ID);
	if(status != XST_SUCCESS) return XST_FAILURE;

	//-----------------------------------TIMER-----------------------------------------------
	XTmrCtr_Config *TimerConfig;
	TimerConfig = XScuTimer_LookupConfig(XPAR_PS7_SCUTIMER_0_DEVICE_ID);
	status = XScuTimer_CfgInitialize(&TimerInst, TimerConfig, TimerConfig->BaseAddress);
	if(status != XST_SUCCESS) return XST_FAILURE;

	/* XScuTimer clock is 1/2 cpu clock, i.e., one second */
	XScuTimer_LoadTimer(&TimerInst, XPAR_PS7_CORTEXA9_0_CPU_CLK_FREQ_HZ / 2);
	XScuTimer_EnableAutoReload(&TimerInst);

	//--------------------------Interrupt controller initialization--------------------------
	INTC_Config = XScuGic_LookupConfig(INTC_DEVICE_ID);
	status = XScuGic_CfgInitialize(&INTCInst, INTC_Config, INTC_Config->CpuBaseAddress);

	// Call to interrupt setup
	XGpio_InterruptEnable(&BTNInst, BTN_INT);
	XGpio_InterruptGlobalEnable(&BTNInst);
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,(Xil_ExceptionHandler)XScuGic_InterruptHandler, &INTCInst);
	Xil_ExceptionEnable();

	// Connect GPIO interrupt to handler
	status = XScuGic_Connect(&INTCInst,INTC_GPIO_INTERRUPT_ID, (Xil_ExceptionHandler)BTN_Intr_Handler, (void *)&BTNInst);
	if(status != XST_SUCCESS) return XST_FAILURE;

	// Connect timer interrupt to handler
	status = XScuGic_Connect(&INTCInst, XPAR_SCUTIMER_INTR, (Xil_ExceptionHandler)TimerInst_Intr_handler, (void *)&TimerInst);
	if(status != XST_SUCCESS) return XST_FAILURE;

	// Enable GPIO and timer interrupts in the controller
	XScuGic_Enable(&INTCInst, INTC_GPIO_INTERRUPT_ID);
	XScuGic_Enable(&INTCInst, XPAR_SCUTIMER_INTR);
	XScuTimer_EnableInterrupt(&TimerInst);


    return 0;
}
