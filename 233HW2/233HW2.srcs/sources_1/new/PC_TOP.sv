`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2024 02:30:24 PM
// Design Name: 
// Module Name: PC_TOP
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


module PC_TOP(
// initializa all inputs and outputs
    input logic PC_rst,
    input logic PC_WE,
    input logic[31:0] jalr,
    input logic[31:0] branch,
    input logic [31:0]jal,
    input logic [31:0] mtvec,
    input logic [31:0] mepc,
    input logic [2:0]PC_SEL,
    input logic clk,
    output logic [31:0] PC_count,
    output logic [31:0] PC_Plus_Four
    );
    // initialize all internal connections
      logic [31:0] t1,t2,t3;
    
    // link all the lower modules inputs and outputs together
    assign PC_count=t2;
    assign PC_Plus_Four=t3;
    PlusFour PF (.SUM_IN(t2),.SUM_OUT(t3));    
     
    MUX MUX1 (.SUM(t3),
            .jalr(jalr),
            .branch(branch),
            .jal(jal),
            .mtvec(mtvec),
            .mepc(mepc),
            .PC_SEL(PC_SEL),
            .MUX_OUT(t1));
    
    PC PC1(.PC_write(PC_WE),
            .PC_rst(PC_rst),
            .PC_Din(t1),
            .PC_clk(clk),
            .PC_count(t2));
                    
 
endmodule
