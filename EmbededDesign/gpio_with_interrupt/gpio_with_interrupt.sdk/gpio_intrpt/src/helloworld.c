#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xgpio.h"
#include "xscugic.h"
#include "xil_exception.h"

// Parameter definitions
// SCU Snoop Control Unit GIC Generic Interrupt Control
#define INTC_DEVICE_ID XPAR_PS7_SCUGIC_0_DEVICE_ID
#define BTNS_DEVICE_ID XPAR_AXI_GPIO_0_DEVICE_ID
#define LEDS_DEVICE_ID XPAR_AXI_GPIO_1_DEVICE_ID
#define INTC_GPIO_INTERRUPT_ID XPAR_FABRIC_AXI_GPIO_0_IP2INTC_IRPT_INTR
#define BTN_INT XGPIO_IR_CH1_MASK

//--------------------------
//Declare LED instance, BTN instance
//--------------------------
XGpio LEDInst, BTNInst;
//----------------------------------------------
//Declare snoop control unit generic interrupt controller
//-----------------------------------------------
XScuGic INTCInst;

static int led_value;
static int btn_value;
//----------------------------------------------------
// PROTOTYPE FUNCTIONS
//----------------------------------------------------
static void BTN_Intr_Handler(void *InstancePtr);
static int InterruptSystemSetup(XScuGic *XScuGicInstancePtr);
static int IntcInitFunction(u16 DeviceId, XGpio *GpioInstancePtr);

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
	if(btn_value == 8) led_value = 0;
	else led_value += btn_value;

	XGpio_DiscreteWrite(&LEDInst, 1, led_value);
	(void) XGpio_InterruptClear(&BTNInst, BTN_INT);
	// Enable GPIO interrupts
	XGpio_InterruptEnable(&BTNInst, BTN_INT);
}

int main (void)
{
	int status;
	// Instantiate LEDInst
	status = XGpio_Initialize(&LEDInst, LEDS_DEVICE_ID);
	if(status != XST_SUCCESS) return XST_FAILURE;
	// Instantiate BTNInst
	status = XGpio_Initialize(&BTNInst, BTNS_DEVICE_ID);
	if(status != XST_SUCCESS) return XST_FAILURE;
	// Set LEDs direction to outputs
	XGpio_SetDataDirection(&LEDInst, 1, 0x00);
	// Set all buttons direction to inputs
	XGpio_SetDataDirection(&BTNInst, 1, 0xFF);
	// Initialize interrupt controller
	status = IntcInitFunction(INTC_DEVICE_ID, &BTNInst);
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
	status = XScuGic_Connect(&INTCInst, INTC_GPIO_INTERRUPT_ID, (Xil_ExceptionHandler) BTN_Intr_Handler, (void *)GpioInstancePtr);

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
	XGpio_InterruptEnable(&BTNInst, BTN_INT);
	XGpio_InterruptGlobalEnable(&BTNInst);
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler) XScuGic_InterruptHandler, XScuGicInstancePtr);

	Xil_ExceptionEnable();
	return XST_SUCCESS;
}
