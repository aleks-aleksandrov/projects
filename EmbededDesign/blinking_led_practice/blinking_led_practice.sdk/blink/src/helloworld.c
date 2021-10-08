#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xgpio.h"
#include "xscugic.h"
#include "xil_exception.h"
#include "xtmrctr.h"

#define BTNS_DEVICE_ID XPAR_BTNS_DEVICE_ID
#define LEDS_DEVICE_ID XPAR_LED_DEVICE_ID
#define TMR_DEVICE_ID XPAR_TMRCTR_0_DEVICE_ID

#define INTC_GPIO_INTERRUPT_ID XPAR_FABRIC_BTNS_IP2INTC_IRPT_INTR
#define INTC_TMR_INTERRUPT_ID XPAR_FABRIC_AXI_TIMER_0_INTERRUPT_INTR
#define INTC_DEVICE_ID XPAR_PS7_SCUGIC_0_DEVICE_ID
#define BTN_INT XGPIO_IR_CH1_MASK

XGpio  BTNInst, LEDInst;
XScuGic INTCInst;
XTmrCtr TMRInst;

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

		XTmrCtr_Reset(&TMRInst,0);
		XTmrCtr_Start(&TMRInst,0);
		printf("Button 1\n\r");

	}else if(btn_value == 2){//STOP
		led_value = 0;
		XTmrCtr_Stop(&TMRInst,0);
		printf("Button 2\n\r");

	}else if(btn_value == 4 && is_slow){
		is_slow = 0;
		XTmrCtr_Stop(&TMRInst,0);
		XTmrCtr_SetResetValue(&TMRInst, 0, TMR_LOAD/3); //fast
		XTmrCtr_Reset(&TMRInst,0);
		XTmrCtr_Start(&TMRInst,0);
		printf("Button 3\n\r");
	}else if(btn_value == 8 && !is_slow){
		is_slow = 1;
		XTmrCtr_Stop(&TMRInst,0);
		XTmrCtr_SetResetValue(&TMRInst, 0, TMR_LOAD); //slow
		XTmrCtr_Reset(&TMRInst,0);
		XTmrCtr_Start(&TMRInst,0);
		printf("Button 4\n\r");
	}

	XGpio_DiscreteWrite(&LEDInst, 1, led_value);
	(void) XGpio_InterruptClear(&BTNInst, BTN_INT);

	// Enable GPIO interrupts
	XGpio_InterruptEnable(&BTNInst, BTN_INT);
}

int flag = 1;//led on
void TMR_Intr_Handler(void *data){

	if (XTmrCtr_IsExpired(&TMRInst,0)){
		// Once timer has expired, stop change led_data
		// reset timer and start running again
		XTmrCtr_Stop(&TMRInst,0);
		//Do something with timer here
		if(flag){
			flag = 0;
			XGpio_DiscreteWrite(&LEDInst, 1, 0);
		}else{
			flag = 1;
			XGpio_DiscreteWrite(&LEDInst, 1, 1); //blink
		}
		XTmrCtr_Reset(&TMRInst,0);
		XTmrCtr_Start(&TMRInst,0);
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

	status = XTmrCtr_Initialize(&TMRInst, TMR_DEVICE_ID);
	if(status != XST_SUCCESS) return XST_FAILURE;

	XTmrCtr_SetHandler(&TMRInst, TMR_Intr_Handler, &TMRInst);
	XTmrCtr_SetResetValue(&TMRInst, 0, TMR_LOAD);
	XTmrCtr_SetOptions(&TMRInst, 0, XTC_INT_MODE_OPTION | XTC_AUTO_RELOAD_OPTION);

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
	status = XScuGic_Connect(&INTCInst, INTC_TMR_INTERRUPT_ID, (Xil_ExceptionHandler)TMR_Intr_Handler, (void *) &TMRInst);
	if(status != XST_SUCCESS) return XST_FAILURE;

	// Enable GPIO and timer interrupts in the controller
	XScuGic_Enable(&INTCInst, INTC_GPIO_INTERRUPT_ID);
	XScuGic_Enable(&INTCInst, INTC_TMR_INTERRUPT_ID);

	//XTmrCtr_Start(&TMRInst, 0);

    return 0;
}
