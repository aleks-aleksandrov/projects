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
extern void execute_58(char*, char *);
extern void execute_63(char*, char *);
extern void execute_66(char*, char *);
extern void execute_68(char*, char *);
extern void execute_73(char*, char *);
extern void execute_80(char*, char *);
extern void execute_81(char*, char *);
extern void execute_78(char*, char *);
extern void execute_84(char*, char *);
extern void execute_93(char*, char *);
extern void execute_90(char*, char *);
extern void execute_95(char*, char *);
extern void execute_99(char*, char *);
extern void execute_105(char*, char *);
extern void execute_109(char*, char *);
extern void execute_112(char*, char *);
extern void execute_149(char*, char *);
extern void execute_122(char*, char *);
extern void execute_123(char*, char *);
extern void execute_126(char*, char *);
extern void execute_221(char*, char *);
extern void execute_194(char*, char *);
extern void execute_195(char*, char *);
extern void execute_198(char*, char *);
extern void execute_293(char*, char *);
extern void execute_266(char*, char *);
extern void execute_267(char*, char *);
extern void execute_270(char*, char *);
extern void execute_303(char*, char *);
extern void execute_307(char*, char *);
extern void execute_310(char*, char *);
extern void execute_315(char*, char *);
extern void execute_119(char*, char *);
extern void execute_145(char*, char *);
extern void execute_146(char*, char *);
extern void execute_148(char*, char *);
extern void execute_136(char*, char *);
extern void execute_142(char*, char *);
extern void execute_143(char*, char *);
extern void execute_140(char*, char *);
extern void execute_166(char*, char *);
extern void execute_167(char*, char *);
extern void execute_171(char*, char *);
extern void execute_157(char*, char *);
extern void execute_163(char*, char *);
extern void execute_164(char*, char *);
extern void execute_161(char*, char *);
extern void execute_169(char*, char *);
extern void execute_189(char*, char *);
extern void execute_190(char*, char *);
extern void execute_192(char*, char *);
extern void execute_180(char*, char *);
extern void execute_186(char*, char *);
extern void execute_187(char*, char *);
extern void execute_184(char*, char *);
extern void transaction_1(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[57] = {(funcp)execute_58, (funcp)execute_63, (funcp)execute_66, (funcp)execute_68, (funcp)execute_73, (funcp)execute_80, (funcp)execute_81, (funcp)execute_78, (funcp)execute_84, (funcp)execute_93, (funcp)execute_90, (funcp)execute_95, (funcp)execute_99, (funcp)execute_105, (funcp)execute_109, (funcp)execute_112, (funcp)execute_149, (funcp)execute_122, (funcp)execute_123, (funcp)execute_126, (funcp)execute_221, (funcp)execute_194, (funcp)execute_195, (funcp)execute_198, (funcp)execute_293, (funcp)execute_266, (funcp)execute_267, (funcp)execute_270, (funcp)execute_303, (funcp)execute_307, (funcp)execute_310, (funcp)execute_315, (funcp)execute_119, (funcp)execute_145, (funcp)execute_146, (funcp)execute_148, (funcp)execute_136, (funcp)execute_142, (funcp)execute_143, (funcp)execute_140, (funcp)execute_166, (funcp)execute_167, (funcp)execute_171, (funcp)execute_157, (funcp)execute_163, (funcp)execute_164, (funcp)execute_161, (funcp)execute_169, (funcp)execute_189, (funcp)execute_190, (funcp)execute_192, (funcp)execute_180, (funcp)execute_186, (funcp)execute_187, (funcp)execute_184, (funcp)transaction_1, (funcp)vhdl_transfunc_eventcallback};
const int NumRelocateId= 57;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/accum_behav/xsim.reloc",  (void **)funcTab, 57);
	iki_vhdl_file_variable_register(dp + 25000);
	iki_vhdl_file_variable_register(dp + 25056);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/accum_behav/xsim.reloc");
}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/accum_behav/xsim.reloc");
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
    iki_set_sv_type_file_path_name("xsim.dir/accum_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/accum_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/accum_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
