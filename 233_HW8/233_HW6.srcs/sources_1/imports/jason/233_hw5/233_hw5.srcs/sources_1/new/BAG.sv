`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2024 02:40:14 PM
// Design Name: 
// Module Name: BAG
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


module BAG(
input logic [31:0] rs1,
input logic [31:0] PC,
input logic [31:0] IType,
input logic [31:0] JType,
input logic [31:0] BType,

output logic [31:0] branch,
output logic [31:0] jal,
output logic [31:0] jalr
    );
    assign branch = PC + BType; //branch address generation formating 
    assign jal = PC + JType; //jal address generation formating 
    assign jalr = rs1 + IType; //jalr address generation formating
endmodule
