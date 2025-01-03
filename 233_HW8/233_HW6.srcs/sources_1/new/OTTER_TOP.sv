`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2024 07:36:31 PM
// Design Name: 
// Module Name: OTTER_TOP
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module OTTER_TOP(
        //initiallizing inputs and outputs
        input logic RST,
        input logic INTR,
        input logic [31:0] IOBUS_IN,
        input logic CLK,
        output logic IOBUS_WR,
        output logic [31:0] IOBUS_OUT,
        output logic [31:0] IOBUS_ADDR
        );
        // initializing internal signals for all modules
    //immed gen and regfile
    logic [31:0] rs1;
    logic [31:0] rs2;
    logic [31:0] Utype;
    logic [31:0] Itype;
    logic [31:0] Stype;
    logic [31:0] Jtype;
    logic [31:0] Btype;
    logic [1:0] RF_SEL;
    logic RF_WE;
    //memory file
    logic [31:0] IR;      
    logic mem_WE2;
    logic memRDEN1;
    logic memRDEN2;
    logic [31:0] DOUT2;
    //pc and +4
    logic PC_RST;            
    logic PC_WE;            
    logic [31:0] JALR;       
    logic [31:0] BRANCH;    
    logic [31:0] JAL;     
    logic [31:0] MTVEC;   
    logic [31:0] MEPC;    
    logic [2:0] PC_SEL;  
    logic [31:0] PC;  
    logic [31:0] PC_PLUS_FOUR; 
    //alu
    logic [3:0] ALU_FUN;
    logic [1:0] srcA_SEL;
    logic [2:0] srcB_SEL;
    logic [31:0] ALU_RESULT;
    logic [31:0] NOT_rs1;
    logic csr_WE;
    logic int_taken;
    logic mret_exec;
    logic [31:0] csr_RD;
// assigning unused values to be 0
    assign mret_exec = 0;
    assign csr_RD = 32'b0;
    assign MEPC = 32'b0;
    assign MTVEC = 32'b0;

//------------------------------------------------------------------------------------ 
        // ALU
        logic [31:0] ALU_srcA;
        logic [31:0] ALU_srcB;
        //srca mux
        always_comb begin
            if (srcA_SEL==0)
                ALU_srcA = rs1;
            else if (srcA_SEL==1)
                ALU_srcA = Utype;
            else
                ALU_srcA=~rs1;
        end
        //srcb mux
         always_comb begin
            if (srcB_SEL==0)
                ALU_srcB = rs2;
            else if (srcB_SEL==1)
                ALU_srcB = Itype;
            else if (srcB_SEL==2)
                ALU_srcB = Stype;
            else if (srcB_SEL==3)
                ALU_srcB = PC;
            else
                ALU_srcB=csr_RD;
        end
        // alu actual module 
        ALU alu(.srcA(ALU_srcA),
                .srcB(ALU_srcB),
                .alu_fun(ALU_FUN),
                .alu_result(ALU_RESULT ));
           assign IOBUS_ADDR=ALU_RESULT;
//----------------------------------------------------------------------------------  
// branch condition generator
// internal signals  
        logic br_lt;
        logic br_ltu;
        logic br_eq;
        BCG bcg(.rs1(rs1),
                .rs2(rs2),
                .br_eq(br_eq),
                .br_lt(br_lt),
                .br_ltu(br_ltu));
//----------------------------------------------------------------------------------  
// branch adress generator  
        BAG bag(.rs1(rs1),
                .PC(PC),
                .IType(Itype),
                .JType(Jtype),
                .BType(Btype),
                .branch(BRANCH ),
                .jal(JAL),
                .jalr(JALR));
//----------------------------------------------------------------------------------    
        //decoder
        CU_DCDR decoder(.opcode(IR[6:0]),
                        .funct3(IR[14:12]),
                        .ir_30(IR[30]),
                        .int_taken(int_taken),
                        .br_eq(br_eq),
                        .br_lt(br_lt),
                        .br_ltu(br_ltu),
                        .ALU_FUN(ALU_FUN),
                        .srcA_SEL(srcA_SEL),
                        .srcB_SEL(srcB_SEL),
                        .PC_SEL(PC_SEL),
                        .RF_SEL(RF_SEL));
//----------------------------------------------------------------------------------    
//decoder
        CU_FSM fsm(.rst(RST),
                   .clk(CLK),
                   .opcode(IR[6:0]),
                   .funct3(IR[14:12]),
                   .intr(INTR),
                   .PC_WE(PC_WE),
                   .RF_WE(RF_WE),
                   .mem_WE2(mem_WE2),
                   .memRDEN1(memRDEN1),
                   .memRDEN2(memRDEN2),
                   .reset(PC_RST),
                   .csr_WE(csr_WE),
                   .int_taken(int_taken),
                   .mret_exec(mret_exec));
//----------------------------------------------------------------------------------    
//immediate generator 
        IMMED_GEN immgen(.Instruction(IR[31:7]),
                .UType(Utype ),
                .IType(Itype),
                .SType(Stype),
                .BType(Btype),
                .JType(Jtype));
//----------------------------------------------------------------------------------    
//memory file
        Memory mem(.MEM_CLK(CLK),
                .MEM_RDEN1(memRDEN1 ),
                .MEM_RDEN2(memRDEN2 ),
                .MEM_WE2(mem_WE2 ),
                .MEM_ADDR1(PC[15:2]),
                .MEM_ADDR2(ALU_RESULT ),
                .MEM_DIN2(rs2),
                .MEM_SIZE(IR[13:12]),
                .MEM_SIGN(IR[14]),
                .IO_IN(IOBUS_IN),
                .IO_WR(IOBUS_WR),
                .MEM_DOUT1(IR),
                .MEM_DOUT2(DOUT2));
                
//----------------------------------------------------------------------------------    
    logic [31:0] ADD_FOUR_OUT;
        PlusFour pf(.SUM_IN(PC_COUNT_OUT),
                .SUM_OUT(ADD_FOUR_OUT));
            assign PC_PLUS_FOUR = ADD_FOUR_OUT;
//----------------------------------------------------------------------------------    
//pc
    logic [31:0] PC_MUX_OUT; 
    logic [31:0] PC_COUNT_OUT; 

//pc mux\
         always_comb begin
            if (PC_SEL==0)
                PC_MUX_OUT = ADD_FOUR_OUT;
            else if (PC_SEL==1)
                PC_MUX_OUT = JALR;
            else if (PC_SEL==2)
                PC_MUX_OUT = BRANCH;
            else if (PC_SEL==3)
                PC_MUX_OUT = JAL;
            else if (PC_SEL==4)
                PC_MUX_OUT = MTVEC;
            else
                PC_MUX_OUT = MEPC;
        end
        PC prog_count(.PC_write(PC_WE),
                .PC_rst(PC_RST),
                .PC_Din(PC_MUX_OUT),
                .PC_clk(CLK),
                .PC_count(PC_COUNT_OUT));
                
                assign PC = PC_COUNT_OUT;

 //----------------------------------------------------------------------------------    
 //regfile 
 logic [31:0] w_data;
 //regfile mux
  always_comb begin
            if (RF_SEL==0)
                 w_data= PC_PLUS_FOUR;
            else if (RF_SEL==1)
                w_data = csr_RD;
            else if (RF_SEL==2)
                w_data = DOUT2;
            else
                w_data=ALU_RESULT;
        end
        REGFILE regfile(.en(RF_WE ),
                .adr1(IR[19:15]),
                .adr2(IR[24:20]),
                .w_adr(IR[11:7]),
                .w_data(w_data),
                .CLK(CLK),
                .rs1(rs1),
                .rs2(rs2));
       assign IOBUS_OUT=rs2;
endmodule
