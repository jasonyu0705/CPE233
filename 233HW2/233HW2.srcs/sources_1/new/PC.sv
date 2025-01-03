`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2024 10:38:06 PM
// Design Name: 
// Module Name: PC
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


module PC(
// initialize inputs adn outputs
    input logic PC_write,
    input logic PC_rst,
    input logic [31:0] PC_Din,
    input logic PC_clk,
    output logic [31:0] PC_count
    
    );
    // always flip flop used for non blocking assignments and synchronizes to the rising edge of the clock
    always_ff @(posedge PC_clk)
    begin
    // priority stages the same as in the lab manual
    if (PC_rst==1'd1)// if reset is 1 the set pc count to 1
        PC_count <=32'd0;
    else if (PC_write ==1'd1)// if write enable is 1 then store the din value in pc count
        PC_count<=PC_Din;
    else
        PC_count<=PC_count;// otherwise hold the count value, stopping the incramentation
    
    end
    
endmodule
