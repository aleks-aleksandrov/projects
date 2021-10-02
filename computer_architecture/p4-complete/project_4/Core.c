#include "Core.h"
#include <math.h>

/*
---------------------------------------------------------------------------Project 4----------------------------------------------------------------------------

* In project 4 we have changed our simulation from single cycle architecture to a multi-cycle architecture.

* The Core.h file now contains the following structures: I_Fetch, I_Decode, I_Execute, I_Mem, I_WB and INST;

* The first five structures are hold the necessary signals and registers for the corresponding stage (ex: I_Execute has id_exe_register to store output from ALU)

* Every stage has its own "tick function" which is responsible to execute the corresponding stage each time it is called - the function doesnt run if the 
* previous stage hasnt ran.

* The Pipeline is simulating by using a queue (array) of struct INST. The INST structure holds pointers to the five stages in the pipeline.
* For every new instruction we malloc a new instruction in the queue and after every itteration of the pipeline the queue shifts right.

* Therefore in every itteration of tickFunc we execute the next necessary stage for every instruction in this queue.

* The code exits once the queue is empty.

* NOTE: This implementation doesn't include data hazards, therefore all branching an jump instructions have an undefined behaviour. 
* This is because in order to ittereate the program counter to the appropriate instruction we need to insert bubbles to wait for the output
* of the previous instruction.

------------------------------------------------------------------------------------------------------------------------------------------------------------------
*/
INST instruct_que[4];  

Core *initCore(Instruction_Memory *i_mem)
{
    Core *core = (Core *)malloc(sizeof(Core));

    core->clk = 0;
    core->PC = 0;
    core->instr_mem = i_mem;
    core->tick = tickFunc;
    core->instruction_que = 0;

    core->run_fetch = 1;
    core->fetched = 0;
    core->decoded = 0;
    core->executed = 0;
    core->mem_ran = 0;

    //Initializing Data memory to zero

    core->data_mem[40] = -63;
    core->data_mem[48] = 63;

    //Initializing Register File
    core->reg_file[1] = 0; 
    core->reg_file[2] = 10;
    core->reg_file[3] = -15;
    core->reg_file[4] = 20;
    core->reg_file[5] = 30; 
    core->reg_file[6] = -35; 

    return core;
}

void shiftQueue(){

    for(int i = 4; i>=1; i--){
        instruct_que[i] = instruct_que[i-1];
    }
}

bool tickFunc(Core *core)
{
    //Allocate memory for the necessary structures
    ControlSignals *signals = (ControlSignals *)malloc(sizeof(ControlSignals));
    I_Fetch *fetch = (I_Fetch *)malloc(sizeof(I_Fetch));
    I_Decode *decode = (I_Decode *)malloc(sizeof(I_Decode));
    I_Execute *exec = (I_Execute *)malloc(sizeof(I_Execute));
    I_Mem *mem = (I_Mem *)malloc(sizeof(I_Mem));
    I_WB *wb = (I_WB *)malloc(sizeof(I_WB));

    decode->signals = signals;

    //Initialize Clock Functions
    fetch->tick =  IF_Stage;
    decode->tick = ID_Stage;
    exec->tick = EX_Stage;
    mem->tick = MEM_Stage;
    wb->tick = WB_Stage;
    
    //Construct the 0-th que element        0->1->2->3->4               add->sub
    instruct_que[0].fetch = fetch;
    instruct_que[0].decode = decode;
    instruct_que[0].exec = exec;
    instruct_que[0].mem = mem;
    instruct_que[0].wb = wb;

    wb->tick(core, instruct_que[4]); //WB_Stage(core, instruct_que[4]) inruct_que = INST
    mem->tick(core, instruct_que[3]);
    exec->tick(core, instruct_que[2]);
    decode->tick(core, instruct_que[1]);
    fetch->tick(core, instruct_que[0].fetch);

    shiftQueue();

    //NOT IMPLEMENTED - different branching and jumping instructions need bubbles
    // if(inst->opcode == 111){//JAL store PC+4
    //    core->reg_file[inst->rd] = core->PC + 4;
    //    exec->ALU_result = inst->imm;
    // }
    // if(inst->opcode == 103){//jalr - set the PC to the one stored in x1
    //     core->PC = core->reg_file[inst->rs_1];
    // }
    // else if(signals->Branch && exec->zero){ //Incrementing PC --> change PC based on bne output
    //     // printf("Branch to: %ld \n", inst->imm);
    //     core->PC = Add(core->PC, inst->imm);
    // }else{
    //     core->PC += 4;
    // }

    //All instructions were completed - exit
    if (!core->instruction_que)
    {   
        printf("x[10] = %ld \n", core->reg_file[10]);
        printf("x[11] = %ld \n", core->reg_file[11]);
        printf("x[12] = %ld \n", core->reg_file[12]);
        printf("x[13] = %ld \n", core->reg_file[13]);
        printf("x[14] = %ld \n", core->reg_file[14]);

        
        free(instruct_que[0].fetch);
        free(instruct_que[0].decode->signals);
        free(instruct_que[0].decode);
        free(instruct_que[0].exec);
        free(instruct_que[0].mem);
        free(instruct_que[0].wb);
        
        return false;
    }
    return true;
}

void WB_Stage(Core *core, INST instruction){

    if(!core->mem_ran){
        return;
    }
    
    if(instruction.decode->signals->RegWrite){
        core->reg_file[instruction.decode->rd] = MUX(instruction.decode->signals->MemtoReg, instruction.exec->id_exe_register, instruction.mem->id_mem_register);
    }

    core->instruction_que -= 1;
    
    //Free the instruction memory
    free(instruction.fetch);
    free(instruction.decode->signals);
    free(instruction.decode);
    free(instruction.exec);
    free(instruction.mem);
    free(instruction.wb);
}

void MEM_Stage(Core *core, INST instruction){
    if(!core->executed){
        core->mem_ran = 0;
        return;
    }
    
    //Write Data to memory - MEM stage
    if(instruction.decode->signals->MemWrite){
        core->data_mem[instruction.exec->id_exe_register] = core->reg_file[instruction.decode->rs_2]; //MEM[immediate + rs_1] = Reg[rs_2]
    }
    if(instruction.decode->signals->MemRead){
        instruction.mem->id_mem_register = core->data_mem[instruction.exec->id_exe_register]; //id_mem_register (Reg[rd]) = MEM[immediate + rs_1]
    }
    core->mem_ran = 1;

}

//ALU outputs to instruction.exe->id_exe_register
void EX_Stage(Core *core, INST instruction){

    if(!core->decoded){
        core->executed = 0;
        return;
    }

    instruction.exec->id_exe_register = 0;
    ALU(
        core->reg_file[instruction.decode->rs_1], 
        MUX(instruction.decode->signals->ALUSrc, core->reg_file[instruction.decode->rs_2], instruction.decode->imm), 
        instruction.decode->ALU_ctrl_signal, 
        &instruction.exec->id_exe_register,
        &instruction.exec->zero
    ); 

    if(instruction.decode->signals->Branch && instruction.exec->zero){ //Incrementing PC --> change PC based on bne output
        instruction.exec->new_PC = Add(core->PC, instruction.decode->imm);
    }

    core->executed = 1;
}

void ID_Stage(Core *core, INST instruction){

    //Check if there is a fetched instruction
    if(!core->fetched){
        core->decoded = 0;
        return;
    }

    //Clear previous Decode Results
    instruction.decode->opcode = 0;
    instruction.decode->func3 = 0;
    instruction.decode->imm = 0;
    instruction.decode->func7 = 0;
    instruction.decode->rd = 0;
    instruction.decode->rs_1 = 0;
    instruction.decode->rs_2 = 0;
    instruction.decode->ALU_ctrl_signal = 0;

    //Implement Decode Logic
    for(int i = 0; i <= 6; i++){
        instruction.decode->opcode += instruction.fetch->if_id_reg[i]*pow(2, i);
    }
    char *type;
    type = identifyType(instruction.decode);

    if(!strcmp(type, "R")){

        genDecode(instruction.decode,  instruction.fetch);
        //printf("Decoding results R-type = %ld %ld %ld \n", instruction.decode->rd, instruction.decode->rs_1, instruction.decode->rs_2);
    }
    else if(!strcmp(type, "I")){

        genDecode(instruction.decode,  instruction.fetch);
        ImmeGen(instruction.decode, instruction.fetch, type);
        instruction.decode->func7 = 0;
        //printf("Decoding results I-type =  %ld %ld %ld \n", instruction.decode->rd, instruction.decode->imm, instruction.decode->rs_1);
    }
    else if(!strcmp(type, "SB")){

        genDecode(instruction.decode,  instruction.fetch);
        ImmeGen(instruction.decode, instruction.fetch, type);
        instruction.decode->func7 = 0; //SB-type has no func7
        instruction.decode->imm = ShiftLeft1(instruction.decode->imm); //Shift immediate value to the left
        //printf("Decoding results I-type  =  %ld %ld %ld  \n", instruction.decode->imm, instruction.decode->rs_2, instruction.decode->rs_1);
    }
    else if(!strcmp(type, "UJ")){

        genDecode(instruction.decode,  instruction.fetch);
        ImmeGen(instruction.decode, instruction.fetch, type);
        instruction.decode->func7 = 0; 
        instruction.decode->rs_1 = 0;
        instruction.decode->rs_2 = 0;
        instruction.decode->imm = ShiftLeft1(instruction.decode->imm); //Shift immediate value to the left
        //printf("Decoding results UJ-type =  %ld %ld %ld  \n", instruction.decode->imm, instruction.decode->rs_2, instruction.decode->rs_1);
    }
    else if(!strcmp(type, "S")){

        genDecode(instruction.decode,  instruction.fetch);
        ImmeGen(instruction.decode, instruction.fetch, type); 
        instruction.decode->func7 = 0; 
        //printf("Decoding results S-type =  %ld %ld %ld \n", instruction.decode->imm, instruction.decode->rs_2, instruction.decode->rs_1);
    }
    
    //Generate the Control Unit Signals
    ControlUnit(instruction.decode->opcode, instruction.decode->signals);

    //Generate ALU Control Signal
    instruction.decode->ALU_ctrl_signal = ALUControlUnit(instruction.decode->signals->ALUOp, instruction.decode->func7, instruction.decode->func3);

    //Set decoded flag to true
    core->decoded = 1;
}

void IF_Stage(Core *core, I_Fetch *fetch){
    
    if(!core->run_fetch){//no more instructions to fetch
        core->fetched = 0;
        return;
    }
    
    unsigned instruction = core->instr_mem->instructions[core->PC / 4].instruction;

    //Implement Instruction fetch - return the boolean of the instruction
    // printf("Instruction at PC: %lu\n", core->PC);
    unsigned mask = (1 << 31);
    for (int i = 31; i >= 0; i--){ 
        if (instruction & mask){
            //printf("1 ");
            fetch->if_id_reg[i] = 1;
        }else{ 
            //printf("0 ");
            fetch->if_id_reg[i] = 0;
        }
        mask >>= 1;
    }
    //printf("\n ");

    core->instruction_que += 1;//add instruction to que
    core->fetched = 1; //fetched - true

    //Increment PC - FIXME - stall if we need result from previous instruction?
    core->PC += 4;

    if (core->PC > core->instr_mem->last->addr)
    {   
        core->run_fetch = 0;
        return;
    }
}

void ControlUnit(Signal input, ControlSignals *signals){
    
    if (input == 51){// For R-type
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
    else if (input == 99){//bne/bge/beq instruction - use subtract
        signals->ALUSrc = 0;
        signals->MemtoReg = 0;
        signals->RegWrite = 0;
        signals->MemRead = 0;
        signals->MemWrite = 0;
        signals->Branch = 1;
        signals->ALUOp = 1;
    }
    else if (input == 35){//sd 
        signals->ALUSrc = 1;
        signals->MemtoReg = 0;
        signals->RegWrite = 0;
        signals->MemRead = 0;
        signals->MemWrite = 1;
        signals->Branch = 0;
        signals->ALUOp = 0;
    }
    else if (input == 103){//jalr branch to immediate + rs1
        signals->ALUSrc = 1;
        signals->MemtoReg = 0;
        signals->RegWrite = 0;
        signals->MemRead = 0;
        signals->MemWrite = 0;
        signals->Branch = 0; //we have a custom "branch"
        signals->ALUOp = 3;
    }
    else if (input == 111){//jal branch to immediate + store PC+4
        signals->ALUSrc = 1;
        signals->MemtoReg = 0;
        signals->RegWrite = 1;
        signals->MemRead = 0;
        signals->MemWrite = 0;
        signals->Branch = 1;
        signals->ALUOp = 3;
    }
}


Signal ALUControlUnit(Signal ALUOp, Signal Funct7, Signal Funct3){

    // For add;addi;jalr
    if (ALUOp == 2 && Funct7 == 0 && Funct3 == 0)
    {
        return 2;//add
    }
    if (ALUOp == 3 && Funct7 == 0 && Funct3 == 0)//FOR JAL ALU does nothing
    {
        return 3;
    }

    //subtract
    if (ALUOp == 2 && Funct7 == 32 && Funct3 == 0)
    {
        return 7;//reuse beq operation
    }

    //for ld and sd - add immediate to reg
    if (ALUOp == 0 && Funct7 == 0 && Funct3 == 3)
    {
        return 2;//add
    }
    //for slli/sll
    if (ALUOp == 2 && Funct7 == 0 && Funct3 == 1)
    {
        return 9;//shift
    }
    //-------SB--------
    //bne
    if (ALUOp == 1 && Funct7 == 0 && Funct3 == 1)
    {
        return 6;//subtract if a-b != 0 --> zero = 1
    }
    //beq
    if (ALUOp == 1 && Funct7 == 0 && Funct3 == 0)
    {
        return 7;//subtract if a-b == 0 --> zero = 1
    }
    //bge
    if (ALUOp == 1 && Funct7 == 0 && Funct3 == 5)
    {
        return 8;//subtract if a-b > 0 --> zero = 1
    }
}

void ALU(Signal input_0, Signal input_1, Signal ALU_ctrl_signal, Signal *ALU_result, Signal *zero)
{   
    // For addition
    if (ALU_ctrl_signal == 2)
    {
        *ALU_result = (input_0 + input_1);
        *zero = 1; 
    }

    if (ALU_ctrl_signal == 3)
    {
        *zero = 1; //JAL - use to branch
    }


    //Different Subtract Operations
    if (ALU_ctrl_signal == 6)//bne operation
    {
        *ALU_result = (input_0 - input_1);
        if (*ALU_result != 0){ 
            *zero = 1; 
        }else{ 
            *zero = 0; 
        }
    }
    if (ALU_ctrl_signal == 7)//beq operation
    {
        *ALU_result = (input_0 - input_1);
        if (*ALU_result == 0){ 
            *zero = 1; 
        }else{ 
            *zero = 0; 
        }
    }
    if (ALU_ctrl_signal == 8)//bge operation
    {
        *ALU_result = (input_0 - input_1);
        if (*ALU_result >= 0){ 
            *zero = 1; 
        }else{ 
            *zero = 0; 
        }
    }
    //SHIFT LEFT FUNCTION --> ALU control returns 1000
    if (ALU_ctrl_signal == 9)
    {
        *ALU_result = (input_0*pow(2,input_1));
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
Signal ShiftLeft1(Signal input)
{
    return input << 1; //Changed to shift twice ---> immediate value of -4 --> -8
}

// Imme. Generator - generates immediate value for SB/I/UJ/S
void ImmeGen(I_Decode *inst, I_Fetch *fetch, char *type){ //Use this for I-type?
    int power = 0;

    if(!strcmp(type, "SB")){//generate imm for SB-type
        int size = 12;
        int immediate_array[size];

        //Extract immediate value:
        immediate_array[11] = fetch->if_id_reg[7];
        immediate_array[0] = 0; //not used - later we shift

        int indx = 1;
        for(int i = 8; i <= 11; i++){
            immediate_array[indx] = fetch->if_id_reg[i];
            indx++;
        }
        indx = 5;
        for(int i = 25; i <= 30; i++){
            immediate_array[indx] = fetch->if_id_reg[i];
            indx++;
        }
        immediate_array[12] = fetch->if_id_reg[31];
        
        if(immediate_array[12] == 1){//the immediate value is negative
            reverseTwosComplement(immediate_array, size); 
            converttoDecimal(immediate_array, inst, size);
            inst->imm = inst->imm - 2*(inst->imm);
            
        }else{//immediate value is positive
            converttoDecimal(immediate_array, inst, size);
        }
    }
    else if(!strcmp(type, "I")){//generate imm for I-type
        power = 0;

        for(int i = 20; i <= 31; i++){
            inst->imm += fetch->if_id_reg[i]*pow(2, power);
            power ++;
        }
    }
    else if(!strcmp(type, "UJ")){
        int size = 20;
        int immediate_array[size];
        //Extract immediate value:
        immediate_array[11] = fetch->if_id_reg[20];
        immediate_array[20] = fetch->if_id_reg[31];
        immediate_array[0] = 0; //not used - later we shift

        int indx = 12;
        for(int i = 12; i <= 19; i++){
            immediate_array[indx] = fetch->if_id_reg[i];
            indx++;
        }

        indx = 1;
        for(int i = 21; i <= 30; i++){
            immediate_array[indx] = fetch->if_id_reg[i];
            indx++;
        }

        if(immediate_array[20]==1){
            reverseTwosComplement(immediate_array, size);
            converttoDecimal(immediate_array, inst, size);
            inst->imm = inst->imm - 2*(inst->imm); 
        }
        else{
            converttoDecimal(immediate_array, inst, size);
        }

    }else if(!strcmp(type, "S")){
        int size = 11;
        int immediate_array[size];
        //Extract immediate value:
        immediate_array[11] = fetch->if_id_reg[20];
        immediate_array[20] = fetch->if_id_reg[31];
        immediate_array[0] = 0; //not used - later we shift

        int indx = 5;
        for(int i = 24; i <= 31; i++){
            immediate_array[indx] = fetch->if_id_reg[i];
            indx++;
        }

        indx = 0;
        for(int i = 6; i <= 10; i++){
            immediate_array[indx] = fetch->if_id_reg[i];
            indx++;
        }
        converttoDecimal(immediate_array, inst, size);
    }
}


//Decodes func3,func7,rs_1,rs2
void genDecode(I_Decode *inst, I_Fetch *fetch){

    int power = 0;
    for(int i = 7; i <= 11; i++){
        inst->rd += fetch->if_id_reg[i]*pow(2, power);
        power ++;
    }

    power = 0;
    for(int i = 12; i <= 14; i++){
        inst->func3 += fetch->if_id_reg[i]*pow(2, power);
        power ++;
    }

    power = 0;
    for(int i = 15; i <= 19; i++){
        inst->rs_1 += fetch->if_id_reg[i]*pow(2, power);
        power ++;
    }

    power = 0;
    for(int i = 20; i <= 24; i++){
        inst->rs_2 += fetch->if_id_reg[i]*pow(2, power);
        power ++;
    }

    power = 0;
    for(int i = 25; i <= 31; i++){
        inst->func7 += fetch->if_id_reg[i]*pow(2, power);
        power ++;
    }
}

void converttoDecimal(int immediate_array[], I_Decode *inst, int size){
    int power = 0;
    for(int i = 1; i<=size; i++){
        inst->imm += immediate_array[i]*pow(2, power);
        power++;
    }
}
void reverseTwosComplement(int immediate_array[], int size){
    int invert_flag = 0;
    for(int i = 1; i<= size; i++){//invert all bits
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
            if(m == size){
                break;
            }
        }
    }
}
//identify the instruction based on the opcode and return string
char*  identifyType(I_Decode *inst){

    if(inst->opcode == 51){
        return "R";
    }else if(inst->opcode == 3 || inst->opcode == 19 ||inst->opcode == 103){
        return "I";
    }else if(inst->opcode == 99){
        return "SB";
    }else if(inst->opcode == 111){ //jal
        return "UJ";
    }else if(inst->opcode == 35){
        return "S";
    }
}