#include "Core.h"
#include <math.h>
//#include <imagination.h>

Core *initCore(Instruction_Memory *i_mem)
{
    Core *core = (Core *)malloc(sizeof(Core));

    core->clk = 0;
    core->PC = 0;
    core->instr_mem = i_mem;
    core->tick = tickFunc;

    //Initializing Data memory
    core->data_mem[0] = 16; 
    core->data_mem[8] = 128;
    core->data_mem[16] = 8;
    core->data_mem[32] = 4;

    //Initializing Register File
    core->reg_file[25] = 4; //x25 
    core->reg_file[10] = 4; //x10
    core->reg_file[22] = 1; //x22

    //Put some random values for x8, x24 -- they are equal 
    core->reg_file[8] = 0; 
    core->reg_file[24] = 0; 

    return core;
}

//FIXME, implement this function
bool tickFunc(Core *core)
{
    unsigned instruction = core->instr_mem->instructions[core->PC / 4].instruction;
    ControlSignals *signals = (ControlSignals *)malloc(sizeof(ControlSignals));
    ALUio *alu = (ALUio *)malloc(sizeof(ALUio));
    InstructionElements *inst = (InstructionElements *)malloc(sizeof(InstructionElements));

    //Reading instruction from instruction memory
    //printf("\nInstruction at PC: %lu\n", core->PC);
    int current_instruct[31];
    unsigned mask = (1 << 31);
    for (int i = 31; i >= 0; i--){ 
        if (instruction & mask){
            current_instruct[i] = 1;
        }else{ 
            current_instruct[i] = 0;
        }
        mask >>= 1;
    }

    //--------------------------------------------- Decoding the instruction binary format --------------------------------------------------------
    inst->opcode = 0;
    for(int i = 0; i <= 6; i++){
        inst->opcode += current_instruct[i]*pow(2, i);
    }

    if(inst->opcode == 51){//R-type decoding
        genDecode(inst,  current_instruct);
        //printf("Decoding results = %ld %ld %ld %ld %ld \n", inst->func7, inst->rs_2, inst->rs_1, inst->func3, inst->rd);

    }else if(inst->opcode == 3 || inst->opcode == 19){//I-type
        genDecode(inst,  current_instruct);
        ImmeGen(inst, current_instruct);
        inst->func7 = 0; //I-type has no func7
        //printf("Decoding results =  %ld %ld %ld %ld \n", inst->imm, inst->rs_1, inst->func3, inst->rd);

    }else{//SB-type
        genDecode(inst,  current_instruct);
        ImmeGen(inst, current_instruct);
        inst->func7 = 0; //SB-type has no func7
        inst->imm = ShiftLeft2(inst->imm); //Shift immediate value to the left
        //printf("Decoding results =  %ld %ld %ld %ld \n", inst->imm, inst->rs_2, inst->rs_1, inst->func3);
    }
    

    //-------------------------------------------------- Connect DataPath Components ---------------------------------------------------------------

    //Generate the Control Unit
    ControlUnit(inst->opcode, signals);

    //Generate CTRL signal
    alu->ALUctrl_signal = ALUControlUnit(signals->ALUOp, inst->func7, inst->func3);

    //Initialize ALU
    alu->ALU_result = 0;
    ALU(core->reg_file[inst->rs_1], MUX(signals->ALUSrc, core->reg_file[inst->rs_2], inst->imm), alu->ALUctrl_signal, &alu->ALU_result, &alu->zero);
    
    //write output to register if required
    if(signals->RegWrite){
        core->reg_file[inst->rd] = MUX(signals->MemtoReg, alu->ALU_result, core->data_mem[alu->ALU_result]);
    }

    
    //Incrementing PC --> change PC based on bne output
    if(signals->Branch && !alu->zero){ //if bne has returned non equal values
        core->PC = Add(core->PC, inst->imm);
    }else{
        core->PC += 4;
    }

    ++core->clk;

    // Are we reaching the final instruction?
    if (core->PC > core->instr_mem->last->addr)
    {   
        //print results
        printf("x9 = %ld \n",  core->reg_file[9]);
        printf("x11 = %ld \n",  core->reg_file[11]);
        free(signals);
        free(alu);
        free(inst);
        return false;
    }
    return true;
}

void ControlUnit(Signal input, ControlSignals *signals){
    // For R-type
    if (input == 51){
        signals->ALUSrc = 0;
        signals->MemtoReg = 0;
        signals->RegWrite = 1;
        signals->MemRead = 0;
        signals->MemWrite = 0;
        signals->Branch = 0;
        signals->ALUOp = 2;
    }
    else if (input == 3){ //ld instruction
        signals->ALUSrc = 1;
        signals->MemtoReg = 1;
        signals->RegWrite = 1;
        signals->MemRead = 1;
        signals->MemWrite = 0;
        signals->Branch = 0;
        signals->ALUOp = 0;
    }
    else if (input == 19){ //addi and slli instructions
        signals->ALUSrc = 1;
        signals->MemtoReg = 0;
        signals->RegWrite = 1;
        signals->MemRead = 0;
        signals->MemWrite = 0;
        signals->Branch = 0;
        signals->ALUOp = 2;
    }
    else if (input == 99){//bne instruction - use subtract
        signals->ALUSrc = 0;
        signals->MemtoReg = 0;
        signals->RegWrite = 0;
        signals->MemRead = 0;
        signals->MemWrite = 0;
        signals->Branch = 1;
        signals->ALUOp = 1;
    }
}


Signal ALUControlUnit(Signal ALUOp, Signal Funct7, Signal Funct3){

    // For add + addi
    if (ALUOp == 2 && Funct7 == 0 && Funct3 == 0)
    {
        return 2;//add
    }
    //for ld
    if (ALUOp == 0 && Funct7 == 0 && Funct3 == 3)
    {
        return 2;//add
    }
    //for slli
    if (ALUOp == 2 && Funct7 == 0 && Funct3 == 1)
    {
        return 8;//shift
    }
    //for bne
    if (ALUOp == 1 && Funct7 == 0 && Funct3 == 1)
    {
        return 6;//subtract
    }
}

void ALU(Signal input_0, Signal input_1, Signal ALU_ctrl_signal, Signal *ALU_result, Signal *zero)
{   
    // For addition
    if (ALU_ctrl_signal == 2) //change zero output - supports BNE
    {
        *ALU_result = (input_0 + input_1);
        if (*ALU_result == 0){ 
            *zero = 1; 
        }else{ 
            *zero = 0; 
        }
    }
    // For subtract
    if (ALU_ctrl_signal == 6) //INVERT zero output - supports BNE
    {
        *ALU_result = (input_0 - input_1);
        if (*ALU_result == 0){ 
            *zero = 1; 
        }else{ 
            *zero = 0; 
        }
    }
    //SHIFT LEFT FUNCTION --> ALU control returns 1000
    if (ALU_ctrl_signal == 8)
    {
        *ALU_result = (input_0*pow(2,input_1));
    }
}

// Imme. Generator - has two cases SB-type and I-type
void ImmeGen(InstructionElements *inst, int current_instruct[]){ //Use this for I-type?
    int power = 0;
    if(inst->opcode == 99){//generate imm for SB-type

        //Extract immediate value:
        int immediate_array[12];
        immediate_array[11] = current_instruct[7];
        immediate_array[0] = 0; //not used - later we shift

        int indx = 1;
        for(int i = 8; i <= 11; i++){
            immediate_array[indx] = current_instruct[i];
            indx++;
        }
        indx = 5;
        for(int i = 25; i <= 30; i++){
            immediate_array[indx] = current_instruct[i];
            indx++;
        }
        immediate_array[12] = current_instruct[31];
        
        //convert immediate value to signed decimal
        if(immediate_array[12] == 1){//the immediate value is negative

            int invert_flag = 0;
            for(int i = 1; i<=12; i++){//invert all bits
                if(immediate_array[i]==0){
                    immediate_array[i]=1;
                }else{
                    immediate_array[i]=0;
                }
            }

            if(immediate_array[1]==0){//adds one to the inverted array
                immediate_array[1] += 1;
            }else{
                int m = 1;
                while(1){
                    if(immediate_array[m] == 1){
                        immediate_array[m] = 0;
                        m++;
                    }else if(immediate_array[m] == 0){
                        immediate_array[m] = 1;
                        break;
                    }
                    if(m == 12){
                        break;
                    }
                }
            }
            //convert to decimal
            int power = 0;
            int val = 0;
            for(int i = 1; i<=12; i++){
                val += immediate_array[i]*pow(2, power);
                power++;
            }
            inst->imm = val - 2*(val); //add the negative sign
            
        }else{//immediate value is positive

            //convert to decimal
            int power = 0;
            for(int i = 1; i<=12; i++){
                inst->imm += immediate_array[i]*pow(2, power);
                power++;
            }
        }//end of converting immediate to signed decimal

    }else{//generate imm for I-type
        power = 0;
        for(int i = 20; i <= 31; i++){
            inst->imm += current_instruct[i]*pow(2, power);
            power ++;
        }
    }
}
// (4). MUX
Signal MUX(Signal sel, Signal input_0, Signal input_1)
{
    if (sel == 0){ 
        return input_0; 
    }else{ 
        return input_1; 
    }
}

// (5). Add
Signal Add(Signal input_0, Signal input_1)
{
    return (input_0 + input_1);
}

// (6). ShiftLeft2
Signal ShiftLeft2(Signal input)
{
    return input << 2; //Changed to shift twice ---> immediate value of -4 --> -8
}

//Decodes func3,func7,rs_1,rs2
void genDecode(InstructionElements *inst, int current_instruct[]){

    int power = 0;
    for(int i = 7; i <= 11; i++){
        inst->rd += current_instruct[i]*pow(2, power);
        power ++;
    }

    power = 0;
    for(int i = 12; i <= 14; i++){
        inst->func3 += current_instruct[i]*pow(2, power);
        power ++;
    }

    power = 0;
    for(int i = 15; i <= 19; i++){
        inst->rs_1 += current_instruct[i]*pow(2, power);
        power ++;
    }

    power = 0;
    for(int i = 20; i <= 24; i++){
        inst->rs_2 += current_instruct[i]*pow(2, power);
        power ++;
    }

    power = 0;
    for(int i = 25; i <= 31; i++){
        inst->func7 += current_instruct[i]*pow(2, power);
        power ++;
    }
}