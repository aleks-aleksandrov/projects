#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xil_types.h"
#include "xil_io.h"
#include <unistd.h>
#include "kn_rd.h"

int main()
{
	 init_platform();
	 // reset: bit 2 = 1
	 KN_RD_mWriteReg(XPAR_KN_RD_0_S00_AXI_BASEADDR, 0, 4);
	 //L_R: bit 1 = 1, S_F: bit 0 = 0
	 KN_RD_mWriteReg(XPAR_KN_RD_0_S00_AXI_BASEADDR, 0, 2);
	 sleep(2);
	 //L_R: bit 1 = 0, S_F: bit 0 = 0
	 KN_RD_mWriteReg(XPAR_KN_RD_0_S00_AXI_BASEADDR, 0, 0);
	 sleep(2);
	 //L_R: bit 1 = 1, S_F: bit 0 = 1
	 KN_RD_mWriteReg(XPAR_KN_RD_0_S00_AXI_BASEADDR, 0, 3);
	 sleep(2);
	 //L_R: bit 1 = 0, S_F: bit 0 = 1
	 KN_RD_mWriteReg(XPAR_KN_RD_0_S00_AXI_BASEADDR, 0, 1);
	 sleep(2);
	 // reset bit 2 = 1
	 KN_RD_mWriteReg(XPAR_KN_RD_0_S00_AXI_BASEADDR, 0, 4);
	 cleanup_platform();
	 return 0;
}
