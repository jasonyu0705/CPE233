`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2024 02:53:55 PM
// Design Name: 
// Module Name: BCG_TB
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


module BCG_BCG();

    logic [31:0] rs1_TB;
    logic [31:0] rs2_TB;
    logic br_eq_TB;
    logic br_lt_TB;
    logic br_ltu_TB;

    BCG UUT (.rs1(rs1_TB), .rs2(rs2_TB), .br_eq(br_eq_TB), .br_lt(br_lt_TB), .br_ltu(br_ltu_TB));

    always begin

    // Test eq (logic high case)
    #10 rs1_TB = 32'b11111111;
        rs2_TB = 32'b11111111;

    // Test eq (logic low case)
    #10 rs1_TB = 32'h00000001; 
        rs2_TB = 32'h00000010;

    // Test lt signed (logic high case)
    #10 rs1_TB = 32'h00000000; 
        rs2_TB = 32'h0000fff7;

    // Test lt signed (logic low case)
    #10 rs1_TB = 32'h0000fff7; 
        rs2_TB = 32'h00000000;

    // Test ltu unsigned (logic low case)
    #10 rs1_TB = 32'h00011111;
        rs2_TB = 32'h00001111;

    // Test ltu unsigned (logic high case)
    #10 rs1_TB = 32'h00001111;
        rs2_TB = 32'h00011111;

    #10;

    $stop; 

    end
endmodule
