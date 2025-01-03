`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2024 02:54:26 PM
// Design Name: 
// Module Name: BAG_TB
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

module BAG_TB();
    logic [31:0] PC_TB;
    logic [31:0] rs1_TB;
    logic [31:0] BType_TB;
    logic [31:0] JType_TB;
    logic [31:0] IType_TB;
    logic [31:0] branch_TB;
    logic [31:0] jal_TB;
    logic [31:0] jalr_TB;

    BAG UUT(.PC(PC_TB), .rs1(rs1_TB), 
            .BType(BType_TB), .JType(JType_TB),
            .IType(IType_TB), .branch(branch_TB),
            .jal(jal_TB), .jalr(jalr_TB));

    always begin
    // testing normal case 
     PC_TB = 32'd0;
     rs1_TB = 32'd4;
     BType_TB = 32'd8;
     JType_TB = 32'd12;
     IType_TB = 32'd16;
    #10;
    // testing the immediates bring 0 case 
     PC_TB = 32'd4;
     rs1_TB = 32'd0;
     BType_TB = 32'd0;
     JType_TB = 32'd0;
     IType_TB = 32'd0;
    #10;
    // testing negative values for the immediates
    PC_TB = 32'd16;
     rs1_TB = 32'd0;
     BType_TB = -1;
     JType_TB = -2;
     IType_TB = -4;
    #10;
    $stop;

    end
endmodule
