#ifndef __CORE_H__
#define __CORE_H__

#include "Instruction_Memory.h"

#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <string.h>

#define BOOL bool

typedef uint64_t Byte;
typedef int64_t Signal;
typedef int64_t Register;


struct I_Fetch;
struct I_Decode;
struct I_Execute;
struct I_Mem;
struct INST;

typedef struct Core Core;
typedef struct I_Fetch I_Fetch;
typedef struct I_Decode I_Decode;
typedef struct I_Execute I_Execute;
typedef struct I_Mem I_Mem;
typedef struct INST INST;


typedef struct ControlSignals
{
    Signal Branch;
    Signal MemRead;
    Signal MemtoReg;
    Signal ALUOp;
    Signal MemWrite;
    Signal ALUSrc;
    Signal ForwardA;
    Signal ForwardB; 
    Signal RegWrite;
}ControlSignals;

//------------------------------------------------------------STAGES--------------------------------------------------------------

//Fetch structure and function
typedef struct I_Fetch
{
    int if_id_reg[32];
    int end;
    void (*tick)(Core *core, I_Fetch *fetch);
}I_Fetch;
void IF_Stage(Core *core, I_Fetch *fetch);


//Decode structure and tick function
typedef struct I_Decode 
{
    Register func3;
    Register func7;
    Register imm;
    Register rd;
    Register rs_1;
    Register rs_2;
    Register opcode;
    Register ALU_ctrl_signal;
    ControlSignals *signals; 
    void (*tick)(Core *core, INST instruction); 
}I_Decode;
void ID_Stage(Core *core, INST instruction); 


//Execute structure and tick function
typedef struct I_Execute
{
    Signal zero;
    Register new_PC;
    Register ex_result;
    void (*tick)(Core *core, INST instruction);
}I_Execute;
void EX_Stage(Core *core, INST instruction);


//memory structure and tick function
typedef struct I_Mem
{
    Register mem_register; 
    void (*tick)(Core *core, INST instruction);
}I_Mem;
void MEM_Stage(Core *core, INST instruction);


//Write Back Structure and tick function
typedef struct I_WB 
{
    void (*tick)(Core *core, INST instruction);
}I_WB;
void WB_Stage(Core *core, INST instruction);

//------------------------------------------------------------STAGES - END--------------------------------------------------------------
typedef struct INST //Holds an instruction in the que
{
    I_Fetch  *fetch;
    I_Decode *decode;
    I_Execute *exec;
    I_Mem *mem;
    I_WB *wb;
}INST;


typedef struct Core
{
    Tick clk; // Keep track of core clock
    Addr PC; // Keep track of program counter

    int instruction_que;
    Instruction_Memory *instr_mem;
   
    Byte data_mem[1024]; // data memory

    Register reg_file[32]; // register file.
    int scoreboard[32]; //store the bit for scoreboard

    bool (*tick)(Core *core);
    //Storage register inbetween stages
    Register ex_mem_register;
    Register mem_reg;
    Register mem_wb_register;
    //Add flags for different stages
    bool fetched;
    bool decoded;
    bool executed;
    bool mem_ran;
    bool run_fetch;

    bool bubble;

}Core;
Core *initCore(Instruction_Memory *i_mem);
bool tickFunc(Core *core);

//Some custom functions
void genDecode(I_Decode *inst, I_Fetch *fetch); 
char* identifyType(I_Decode *inst); 
void reverseTwosComplement(int immediate_array[], int size);
void converttoDecimal(int immediate_array[], I_Decode *inst, int size);
int scoreboard_check(Core *core, INST instruction);
void scoreboard_set_bit(Core *core, INST instruction);

void dataForwarding(Core *core, INST instruction);
int check_rs_dependence(Core *core, INST instruction);
int find_producer(INST instruction, int rs);
void setForwardSignals(INST instruction, int producer_indx, int rs);
//----------------------------------------------------My Structures - END-------------------------------------------------

// FIXME (1). Control Unit.
void ControlUnit(Signal input, ControlSignals *signals); 

// FIXME (2). ALU Control Unit.
Signal ALUControlUnit(Signal ALUOp,
                      Signal Funct7,
                      Signal Funct3);

// FIXME (3). Imme. Generator
void ImmeGen(I_Decode *inst, I_Fetch *fetch, char *type); //changed return type of ImmeGen

// FIXME (4). ALU
void ALU(Signal input_0,
         Signal input_1,
         Signal ALU_ctrl_signal,
         Signal *ALU_result,
         Signal *zero);

// (4). MUX
Signal MUX(Signal sel,
           Signal input_0,
           Signal input_1);

Signal MUX2(Signal sel, Register input_0, Register input_1, Register input_2);
// (5). Add
Signal Add(Signal input_0,
           Signal input_1);

// (6). ShiftLeft1
Signal ShiftLeft1(Signal input);

#endif
