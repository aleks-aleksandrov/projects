#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xscutimer.h"
#include "xparameters.h"
#include "xscugic.h"

#define COUNT_MAX 10

static void TimerInst_Intr_handler(void *CallBackRef);
int count = 0;

int main()
{
	init_platform();
	int Status;

	/* Declare Instance and Configuaration*/
	XScuTimer TimerInst;
	XScuTimer_Config *Timer_Config;

	/* Declare Interrupt Controller instance and configuration */
	XScuGic INTCInst;
	XScuGic_Config *INTC_Config;
	INTC_Config = XScuGic_LookupConfig(XPAR_PS7_SCUGIC_0_DEVICE_ID);

	/* Instantiate Interrupt Controller */
	Status = XScuGic_CfgInitialize(&INTCInst, INTC_Config, INTC_Config->CpuBaseAddress);

	/* Instantiate XScuTimer */
	Timer_Config = XScuTimer_LookupConfig(XPAR_PS7_SCUTIMER_0_DEVICE_ID);
	Status = XScuTimer_CfgInitialize(&TimerInst, Timer_Config, Timer_Config->BaseAddr);

	Xil_ExceptionInit();
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_IRQ_INT, (Xil_ExceptionHandler)XScuGic_InterruptHandler, &INTCInst);

	/* connect interrupt controller and TimerInst_Intr_handler*/
	Status = XScuGic_Connect(&INTCInst, XPAR_SCUTIMER_INTR, (Xil_ExceptionHandler)TimerInst_Intr_handler, (void *)&TimerInst);
	XScuGic_Enable(&INTCInst, XPAR_SCUTIMER_INTR);

	XScuTimer_EnableInterrupt(&TimerInst);
	Xil_ExceptionEnable();

	 /* XScuTimer clock is 1/2 cpu clock, i.e., one second */
	XScuTimer_LoadTimer(&TimerInst, XPAR_PS7_CORTEXA9_0_CPU_CLK_FREQ_HZ / 2);
	XScuTimer_EnableAutoReload(&TimerInst);
	XScuTimer_Start(&TimerInst);

	while(1){
		if (count >= COUNT_MAX) break;
	}
	printf(" End Program\n\r");
	Xil_ExceptionDisable();
	XScuGic_Disconnect(&INTCInst, XPAR_SCUTIMER_INTR);
	cleanup_platform();

	return 0;

}

static void TimerInst_Intr_handler(void *CallBackRef){
	XScuTimer *This_TimerInst = (XScuTimer *) CallBackRef;

	if (XScuTimer_IsExpired(This_TimerInst)){
		XScuTimer_ClearInterruptStatus(This_TimerInst);
		count++;
		printf(" (%d) seconds\n\r", count);
		if (count >= COUNT_MAX) XScuTimer_DisableAutoReload(This_TimerInst);
	}
}


