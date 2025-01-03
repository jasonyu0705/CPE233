`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2024 02:37:13 PM
// Design Name: 
// Module Name: IMMED_GEN
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


module IMMED_GEN(
// initializing inputs and outputs
    input logic [31:7] Instruction,
    output logic [31:0] UType,IType,SType,BType,JType
    );
    
    always_comb 
    begin 
    //U type formatting
    UType={Instruction[31:12],12'b0};
    //I type formatting
    IType={{21{Instruction[31]}}, Instruction[30:20]};
    //S type formatting
    SType={{21{Instruction[31]}}, Instruction[30:25], Instruction[11:7]};
    //B type formatting
    BType={{20{Instruction[31]}}, Instruction[7], Instruction[30:25], Instruction[11:8],1'b0};
    //J type formatting
    JType={{12{Instruction[31]}}, Instruction[19:12],Instruction[20], Instruction[30:21],1'b0};
    end
endmodule
