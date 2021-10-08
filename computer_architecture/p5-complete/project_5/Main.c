#include <stdio.h>

#include "Core.h"
#include "Parser.h"

int main(int argc, const char *argv[])
{	
    if (argc != 2)
    {
        printf("Usage: %s %s\n", argv[0], "<trace-file>");

        return 0;
    }

    /* Task One */
    // TODO, (1) parse and translate all the assembly instructions into binary format;

    // (2) store the translated binary instructions into instruction memory.

    Instruction_Memory instr_mem;
    instr_mem.last = NULL;
    loadInstructions(&instr_mem, argv[1]); //opens trace file, prosseses assembly and returns binary to the instruction structure

    Core *core = initCore(&instr_mem);

    while (core->tick(core));

    printf("Simulation is finished.\n");

    free(core);    
}
