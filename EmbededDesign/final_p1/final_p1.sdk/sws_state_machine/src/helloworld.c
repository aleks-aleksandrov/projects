#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xgpio.h"
#include "xscugic.h"
#include "xil_exception.h"
#include "xil_printf.h"


// Parameter definitions
// SCU Snoop Control Unit GIC Generic Interrupt Control
#define INTC_DEVICE_ID XPAR_PS7_SCUGIC_0_DEVICE_ID
#define SWS_DEVICE_ID XPAR_SWS_DEVICE_ID

#define INTC_GPIO_INTERRUPT_ID XPAR_FABRIC_SWS_IP2INTC_IRPT_INTR
#define SWS_INT XGPIO_IR_CH1_MASK

//--------------------------
//Declare LED instance, BTN instance
//--------------------------
XGpio SWSInst;
//----------------------------------------------
//Declare snoop control unit generic interrupt controller
//-----------------------------------------------
XScuGic INTCInst;

static int sws_value;

//----------------------------------------------------
// PROTOTYPE FUNCTIONS
//----------------------------------------------------
static void SWS_INTR_HANDLER(void *InstancePtr);
static int InterruptSystemSetup(XScuGic *XScuGicInstancePtr);
static int IntcInitFunction(u16 DeviceId, XGpio *GpioInstancePtr);

int state = -1;

void SWS_INTR_HANDLER(void *InstancePtr){
	// Disable GPIO interrupts
	XGpio_InterruptDisable(&SWSInst, SWS_INT);

	if ((XGpio_InterruptGetStatus(&SWSInst) & SWS_INT) !=SWS_INT) {
	return;
	}
	sws_value = XGpio_DiscreteRead(&SWSInst, 1);

	if(sws_value == 1){//sws0 on
		state = 0;
	}else if(state == 0 && sws_value == 3){//sws0, sws 1 on
		state = 1;
	}else if(state == 1 && sws_value == 7){ //sws0, sws1, sws2 on
		state = 2;
	}else if(state == 2 && sws_value == 4){ //only sws3 is on
		state = 3;
	}else if(state == 3 && sws_value == 1){///reset
		state = 0;
		xil_printf("Reset: state %d SW %x \n\r",state, sws_value);
	}

	xil_printf("state %d SW %x \n\r",state, sws_value);

	(void) XGpio_InterruptClear(&SWSInst, SWS_INT);
	// Enable GPIO interrupts
	XGpio_InterruptEnable(&SWSInst, SWS_INT);
}

int main (void)
{
	int status;
	//Instantiate Switches
	xil_printf("Initializing...\n\r");
	status = XGpio_Initialize(&SWSInst, SWS_DEVICE_ID);
	if(status != XST_SUCCESS) return XST_FAILURE;


	// Initialize interrupt controller
	status = IntcInitFunction(INTC_DEVICE_ID, &SWSInst);
	if(status != XST_SUCCESS) return XST_FAILURE;
	while(1);
	return 0;
}

int IntcInitFunction(u16 DeviceId, XGpio *GpioInstancePtr)
{
	XScuGic_Config *IntcConfig;
	int status;

	// Instantiate Interrupt controller
	IntcConfig = XScuGic_LookupConfig(DeviceId);
	status = XScuGic_CfgInitialize(&INTCInst, IntcConfig, IntcConfig->CpuBaseAddress);

	if(status != XST_SUCCESS) return XST_FAILURE;

	// Call to interrupt setup
	status = InterruptSystemSetup(&INTCInst);
	if(status != XST_SUCCESS) return XST_FAILURE;

	// Connect GPIO interrupt to handler
	status = XScuGic_Connect(&INTCInst, INTC_GPIO_INTERRUPT_ID, (Xil_ExceptionHandler) SWS_INTR_HANDLER, (void *)GpioInstancePtr);

	if(status != XST_SUCCESS) return XST_FAILURE;

	// Enable GPIO interrupts interrupt
	XGpio_InterruptEnable(GpioInstancePtr, 1);
	XGpio_InterruptGlobalEnable(GpioInstancePtr);
	// Enable GPIO interrupts in the controller
	XScuGic_Enable(&INTCInst, INTC_GPIO_INTERRUPT_ID);
	return XST_SUCCESS;
}

int InterruptSystemSetup(XScuGic *XScuGicInstancePtr){

	// Enable interrupt
	XGpio_InterruptEnable(&SWSInst, SWS_INT);
	XGpio_InterruptGlobalEnable(&SWSInst);
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler) XScuGic_InterruptHandler, XScuGicInstancePtr);

	Xil_ExceptionEnable();
	return XST_SUCCESS;
}
