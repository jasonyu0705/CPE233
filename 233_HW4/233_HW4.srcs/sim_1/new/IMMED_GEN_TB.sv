`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2024 03:38:29 PM
// Design Name: 
// Module Name: IMMED_GEN_TB
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


module IMMED_GEN_TB();
    logic [31:7] Instruction_TB;
    logic [31:0] UType_TB;
    logic [31:0] IType_TB;
    logic [31:0] SType_TB;
    logic [31:0] JType_TB;
    logic [31:0] BType_TB;
    
    IMMED_GEN UUT (.Instruction(Instruction_TB), .UType(UType_TB), .IType(IType_TB), .SType(SType_TB),.JType(JType_TB),.BType(BType_TB));
    
    always begin
        Instruction_TB=25'b0000000000000000000000000;
        #10 Instruction_TB=25'b1111111111111111111111111;
        #10 Instruction_TB=25'b1111111111111000000000000;
        #10 Instruction_TB=25'b1010101010101010101010101;
        #10 Instruction_TB=25'b1111100000111110000011111;
        #10 Instruction_TB=25'b0000000000000000000011111;
        #10
        $stop;
    end
endmodule

