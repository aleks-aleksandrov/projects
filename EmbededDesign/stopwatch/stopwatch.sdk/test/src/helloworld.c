#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xgpio.h"
#include "xscugic.h"
#include "xil_exception.h"
#include "xtmrctr_l.h"
#include "xtmrctr.h"

#define INTC_DEVICE_ID XPAR_PS7_SCUGIC_0_DEVICE_ID
#define BTNS_DEVICE_ID XPAR_BTNS_DEVICE_ID

#define TMR_DEVICE_ID  XPAR_TMRCTR_0_DEVICE_ID

#define INTC_GPIO_INTERRUPT_ID XPAR_FABRIC_BTNS_IP2INTC_IRPT_INTR

#define INTC_TMR_INTERRUPT_ID XPAR_FABRIC_AXI_TIMER_0_INTERRUPT_INTR

#define BTN_INT XGPIO_IR_CH1_MASK

//Set a higher threshold for timer to run in seconds format
#define TMR_LOAD 4278190080*3 //0xFF000000

XGpio  BTNInst;
XTmrCtr TMRInst;
XScuGic INTCInst;

static int btn_value;
static int InterruptSystemSetup(XScuGic *XScuGicInstancePtr);
static int IntcInitFunction(u16 DeviceId, XTmrCtr *TmrInstancePtr, XGpio *GpioInstancePtr);

int count = 0;
void TMR_Intr_Handler(void *data){

	if (XTmrCtr_IsExpired(&TMRInst,0)){
		// Once timer has expired, stop change led_data
		// reset timer and start running again
		XTmrCtr_Stop(&TMRInst,0);
		count++;
		XTmrCtr_Reset(&TMRInst,0);
		XTmrCtr_Start(&TMRInst,0);
	}
}

int rst_flag = 1;
int running = 0;
void BTN_Intr_Handler(void *InstancePtr){
	// Disable GPIO interrupts
	XGpio_InterruptDisable(&BTNInst, BTN_INT);

	// Ignore additional button presses
	if ((XGpio_InterruptGetStatus(&BTNInst) & BTN_INT) !=BTN_INT) {
	return;
	}
	btn_value = XGpio_DiscreteRead(&BTNInst, 1);

	if(btn_value == 1){//START
		if(rst_flag){
			running = 1;
			printf("Stop-watch initialized!\n\r");
			XTmrCtr_Start(&TMRInst, 0);
		}else{
			printf("Reset stop-watch to start!\n\r");
		}

	}else if(btn_value == 2){//Stop

		if(running){//if the clock is running - stop and print
			XTmrCtr_Stop(&TMRInst, 0);
			rst_flag = 0;
			running = 0;
			printf("Stop-watch stopped!\n\r");
			printf("Elapsed seconds = %d\n\r", count);//print seconds to uart
		}else{
			printf("Start stop-watch first!\n\r");
		}

	}else if(btn_value == 4){//Reset Clock
		rst_flag = 1;
		printf("Stop-watch reset!\n\r");
		count = 0;
	}else if(btn_value == 8){
		printf("Button not in use\n\r");
	}

	(void) XGpio_InterruptClear(&BTNInst, BTN_INT);

	// Enable GPIO interrupts
	XGpio_InterruptEnable(&BTNInst, BTN_INT);
}

int main (void)
{
	init_platform();
	int status;

	/* Declare Instance and Configuaration*/
	XScuGic_Config *INTC_Config;

	//------------------------------Instantiate BTNS-----------------------------------
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
	XTmrCtr_Config *TimerConfig;

	status = XTmrCtr_Initialize(&TMRInst, TMR_DEVICE_ID);
	if(status != XST_SUCCESS) return XST_FAILURE;

	XTmrCtr_SetHandler(&TMRInst, TMR_Intr_Handler, &TMRInst);
	XTmrCtr_SetResetValue(&TMRInst, 0, TMR_LOAD);
	XTmrCtr_SetOptions(&TMRInst, 0, XTC_INT_MODE_OPTION | XTC_AUTO_RELOAD_OPTION);

	// Initialize interrupt controller
	status = IntcInitFunction(INTC_DEVICE_ID, &TMRInst, &BTNInst);
	if(status != XST_SUCCESS) return XST_FAILURE;

	while(1);
	return 0;
}

int InterruptSystemSetup(XScuGic *XScuGicInstancePtr){
	// Enable interrupt
	XGpio_InterruptEnable(&BTNInst, BTN_INT);
	XGpio_InterruptGlobalEnable(&BTNInst);

	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,(Xil_ExceptionHandler)XScuGic_InterruptHandler, XScuGicInstancePtr);
	Xil_ExceptionEnable();
	return XST_SUCCESS;
}

int IntcInitFunction(u16 DeviceId, XTmrCtr *TmrInstancePtr, XGpio*GpioInstancePtr){
	XScuGic_Config *IntcConfig;
	int status;

	// Interrupt controller initialization
	IntcConfig = XScuGic_LookupConfig(DeviceId);
	status = XScuGic_CfgInitialize(&INTCInst, IntcConfig, IntcConfig->CpuBaseAddress);

	if(status != XST_SUCCESS) return XST_FAILURE;

	// Call to interrupt setup
	status = InterruptSystemSetup(&INTCInst);
	if(status != XST_SUCCESS) return XST_FAILURE;

	// Connect GPIO interrupt to handler
	status = XScuGic_Connect(&INTCInst,INTC_GPIO_INTERRUPT_ID, (Xil_ExceptionHandler)BTN_Intr_Handler, (void *)GpioInstancePtr);

	if(status != XST_SUCCESS) return XST_FAILURE;

	// Connect timer interrupt to handler
	status = XScuGic_Connect(&INTCInst, INTC_TMR_INTERRUPT_ID, (Xil_ExceptionHandler)TMR_Intr_Handler, (void *)TmrInstancePtr);

	if(status != XST_SUCCESS) return XST_FAILURE;

	// Enable GPIO interrupts interrupt
	XGpio_InterruptEnable(GpioInstancePtr, 1);
	XGpio_InterruptGlobalEnable(GpioInstancePtr);

	// Enable GPIO and timer interrupts in the controller
	XScuGic_Enable(&INTCInst, INTC_GPIO_INTERRUPT_ID);

	XScuGic_Enable(&INTCInst, INTC_TMR_INTERRUPT_ID);
	return XST_SUCCESS;
}
