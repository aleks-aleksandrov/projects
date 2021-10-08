/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_84(char*, char *);
extern void execute_87(char*, char *);
extern void execute_392(char*, char *);
extern void execute_393(char*, char *);
extern void execute_391(char*, char *);
extern void execute_99(char*, char *);
extern void execute_100(char*, char *);
extern void execute_101(char*, char *);
extern void execute_102(char*, char *);
extern void execute_103(char*, char *);
extern void execute_384(char*, char *);
extern void execute_379(char*, char *);
extern void execute_124(char*, char *);
extern void execute_145(char*, char *);
extern void execute_161(char*, char *);
extern void execute_177(char*, char *);
extern void execute_193(char*, char *);
extern void execute_210(char*, char *);
extern void execute_218(char*, char *);
extern void execute_233(char*, char *);
extern void execute_247(char*, char *);
extern void execute_261(char*, char *);
extern void execute_275(char*, char *);
extern void execute_290(char*, char *);
extern void execute_318(char*, char *);
extern void execute_299(char*, char *);
extern void execute_301(char*, char *);
extern void execute_304(char*, char *);
extern void execute_306(char*, char *);
extern void execute_308(char*, char *);
extern void execute_310(char*, char *);
extern void execute_312(char*, char *);
extern void execute_314(char*, char *);
extern void execute_316(char*, char *);
extern void execute_325(char*, char *);
extern void execute_335(char*, char *);
extern void execute_343(char*, char *);
extern void execute_349(char*, char *);
extern void execute_356(char*, char *);
extern void execute_363(char*, char *);
extern void execute_370(char*, char *);
extern void execute_377(char*, char *);
extern void execute_383(char*, char *);
extern void execute_131(char*, char *);
extern void execute_133(char*, char *);
extern void execute_135(char*, char *);
extern void execute_113(char*, char *);
extern void execute_114(char*, char *);
extern void execute_108(char*, char *);
extern void execute_111(char*, char *);
extern void transaction_0(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[52] = {(funcp)execute_84, (funcp)execute_87, (funcp)execute_392, (funcp)execute_393, (funcp)execute_391, (funcp)execute_99, (funcp)execute_100, (funcp)execute_101, (funcp)execute_102, (funcp)execute_103, (funcp)execute_384, (funcp)execute_379, (funcp)execute_124, (funcp)execute_145, (funcp)execute_161, (funcp)execute_177, (funcp)execute_193, (funcp)execute_210, (funcp)execute_218, (funcp)execute_233, (funcp)execute_247, (funcp)execute_261, (funcp)execute_275, (funcp)execute_290, (funcp)execute_318, (funcp)execute_299, (funcp)execute_301, (funcp)execute_304, (funcp)execute_306, (funcp)execute_308, (funcp)execute_310, (funcp)execute_312, (funcp)execute_314, (funcp)execute_316, (funcp)execute_325, (funcp)execute_335, (funcp)execute_343, (funcp)execute_349, (funcp)execute_356, (funcp)execute_363, (funcp)execute_370, (funcp)execute_377, (funcp)execute_383, (funcp)execute_131, (funcp)execute_133, (funcp)execute_135, (funcp)execute_113, (funcp)execute_114, (funcp)execute_108, (funcp)execute_111, (funcp)transaction_0, (funcp)vhdl_transfunc_eventcallback};
const int NumRelocateId= 52;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/multiply_behav/xsim.reloc",  (void **)funcTab, 52);
	iki_vhdl_file_variable_register(dp + 20720);
	iki_vhdl_file_variable_register(dp + 20776);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/multiply_behav/xsim.reloc");
}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/multiply_behav/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/multiply_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/multiply_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/multiply_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
