`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2024 02:39:20 PM
// Design Name: 
// Module Name: BCG
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


module BCG(
input logic [31:0] rs1,
input logic [31:0] rs2,
output logic  br_eq,
output logic br_lt,
output logic  br_ltu
    );
    // check if inputs are equal and store it in br_eq
    assign br_eq = (rs1 == rs2);
    // check if input1 is less than input 2 and store it in br_lt (both unputs are signed)
    assign br_lt = ($signed(rs1) < $signed(rs2));
    // check if input1 is less than input 2 and store it in br_ltu
    assign br_ltu = (rs1 < rs2);
endmodule
