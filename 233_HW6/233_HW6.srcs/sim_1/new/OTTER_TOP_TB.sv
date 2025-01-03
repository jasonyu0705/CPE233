`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2024 01:05:49 AM
// Design Name: 
// Module Name: OTTER_TOP_TB
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


module OTTER_TOP_TB();
    logic RST_TB;
    logic INTR_TB;
    logic [31:0] IOBUS_IN_TB;
    logic CLK_TB;
    logic IOBUS_WR_TB;
    logic [31:0] IOBUS_OUT_TB;
    logic [31:0] IOBUS_ADDR_TB;
    
    
    
    OTTER_TOP UUT(.RST(RST_TB), .INTR(INTR_TB), .CLK(CLK_TB), .IOBUS_IN(IOBUS_IN_TB), .IOBUS_WR(IOBUS_WR_TB), .IOBUS_OUT(IOBUS_OUT_TB), .IOBUS_ADDR(IOBUS_ADDR_TB));
    
    initial begin
        CLK_TB = 0;
        RST_TB=1;
        #10
        RST_TB=0;
        INTR_TB = 0;
    end
    always begin
        #5 CLK_TB = ~CLK_TB;
    end
    always begin
    #300;
    INTR_TB=1;
    #80;
    INTR_TB=0;
    #10 $stop; 
    end
endmodule
