`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2024 10:09:24 PM
// Design Name: 
// Module Name: WRAPPER_TB
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


module WRAPPER_TB();
    logic TB_clk;
    logic[15:0] TB_SWITCHES;
    OTTER_Wrapper UUT(.CLK(TB_clk),.SWITCHES(TB_SWITCHES));

    initial begin
        TB_SWITCHES = 16'b0;
        TB_clk = 0;
    end

    always begin
        #5 TB_clk = ~TB_clk;
    end
endmodule

