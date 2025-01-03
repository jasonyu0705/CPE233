`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2024 04:39:48 PM
// Design Name: 
// Module Name: ALU
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
module ALU(
    input logic [31:0] srcA,
    input logic [31:0] srcB,
    input logic [3:0] alu_fun,
    output logic [31:0] alu_result
    
    );
    always_comb begin
 
    case(alu_fun)
        4'b0000: alu_result=srcA+srcB; //add
        4'b1000: alu_result=srcA - srcB; //sub
        4'b0110: alu_result=srcA||srcB;//or
        4'b0111: alu_result=srcA&&srcB;//and
        4'b0100: alu_result=srcA^srcB;//xor
        4'b0101: alu_result=srcA>>srcB[4:0]; //srl
        4'b0001: alu_result=srcA<<srcB[4:0]; //sll
        4'b1101: alu_result=($signed(srcA)>>>$signed(srcB));//sra
        4'b0010: alu_result=($signed(srcA) <$signed(srcB))?1'b1:1'b0;//slt
        4'b0011: alu_result=(srcA<srcB)?1'b1:1'b0;//sltu
        4'b1001: alu_result=srcA ;//lui-copy
        default: alu_result=32'hdeadbeef;
    endcase
    end
endmodule
