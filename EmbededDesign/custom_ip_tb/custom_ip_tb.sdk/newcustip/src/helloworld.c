
#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "led_driver.h"
#include "xparameters.h"
#include <unistd.h>
#include "xil_io.h"
#include "xscugic.h"
#include "xgpio.h"
#include "xil_exception.h"


#define BTNS_DEVICE_ID XPAR_BUTTONS_DEVICE_ID
#define SWS_DEVICE_ID XPAR_SWITCHES_DEVICE_ID
#define LED_ADDR XPAR_LED_DRIVER_0_S_AXI_BASEADDR

#define INTC_GPIO_INTERRUPT_ID XPAR_FABRIC_BUTTONS_IP2INTC_IRPT_INTR
#define INTC_DEVICE_ID XPAR_PS7_SCUGIC_0_DEVICE_ID
#define BTN_INT XGPIO_IR_CH1_MASK

XGpio  BTNInst, SWSInst;
XScuGic INTCInst;
static int btn_value = 0, sws_value = 0;

void BTN_Intr_Handler(void *InstancePtr){
	// Disable GPIO interrupts
	XGpio_InterruptDisable(&BTNInst, BTN_INT);

	// Ignore additional button presses
	if ((XGpio_InterruptGetStatus(&BTNInst) & BTN_INT) !=BTN_INT) {
	return;
	}
	btn_value = XGpio_DiscreteRead(&BTNInst, 1);

	if(btn_value == 1){//START
		sws_value = XGpio_DiscreteRead(&SWSInst, 1);
		LED_DRIVER_mWriteReg(LED_ADDR, 0, sws_value);
	}else if(btn_value == 2){
		LED_DRIVER_mWriteReg(LED_ADDR, 4, 0);//shift
	}else if(btn_value == 4){

	}else if(btn_value == 8){

	}

	(void) XGpio_InterruptClear(&BTNInst, BTN_INT);

	// Enable GPIO interrupts
	XGpio_InterruptEnable(&BTNInst, BTN_INT);
}

int main()
{
	/* Declare Instance and Configuaration*/
	XScuGic_Config *INTC_Config;
	int status;

	//------------------------------Instantiate BTNS-----------------------------------
	// Instantiate BTNInst
	status = XGpio_Initialize(&BTNInst, BTNS_DEVICE_ID);
	if(status != XST_SUCCESS) return XST_FAILURE;

	//------------------------------Instantiate SWITCHES----------------------------------
	// Instantiate LEDInst
	status = XGpio_Initialize(&SWSInst, SWS_DEVICE_ID);
	if(status != XST_SUCCESS) return XST_FAILURE;

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

	// Enable GPIO and timer interrupts in the controller
	XScuGic_Enable(&INTCInst, INTC_GPIO_INTERRUPT_ID);

	return 0;
}

//print("load i = 0,...,9\n\r");
//int i;
//for (i=0; i<10; i++) {
//	// write i to led_drv, write slvreg0
//	LED_DRIVER_mWriteReg(LED_ADDR, 0, i);
//	// read confirm content
//	xil_printf("%x\r\n", (unsigned int) LED_DRIVER_mReadReg(LED_ADDR, 0));
//	sleep(1);
//}
//
//print("circular right shift\n\r");
//for (i=0; i<10; i++){
//	// shift led_drv reg, a write to slvreg1
//	LED_DRIVER_mWriteReg(LED_ADDR, 4, 0);
//	// read slv_reg2 connects to led_drv reg
//	xil_printf("%x\r\n", (unsigned int)
//	LED_DRIVER_mReadReg(LED_ADDR, 8));
//	sleep(1);
//}
