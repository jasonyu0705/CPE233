`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2024 02:51:38 PM
// Design Name: 
// Module Name: REGFILE_TB
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


module REGFILE_TB();
    logic en_TB;
    logic [4:0] adr1_TB;
    logic [4:0] adr2_TB;
    logic [4:0] w_adr_TB;
    logic [31:0] w_data_TB;
    logic CLK_TB;
    logic [31:0] rs1_TB;
    logic [31:0] rs2_TB;
    
    REGFILE UUT( .en(en_TB),
     .adr1(adr1_TB),
     .adr2(adr2_TB),
     .w_adr(w_adr_TB),
     .w_data( w_data_TB),
     .CLK(CLK_TB),
     .rs1(rs1_TB),
     .rs2(rs2_TB));
     
    always begin 
    CLK_TB = 1;
    #5;
    CLK_TB = 0;
    #5;
    end
    always begin
    //test case write to adr 1 with write enable on
    en_TB=1;
    adr1_TB=2;   
    adr2_TB=3;  
    w_adr_TB=2;
    w_data_TB= 32'd10;
    #10;
    //test case write to adr 2 with write enable on 
    en_TB=1;
    adr1_TB=2;   
    adr2_TB=3;  
    w_adr_TB=3;
    w_data_TB= 32'd11;
    #10;
   //test case read to adr 1 with write enable off
    en_TB=0;
    adr1_TB=2;   
    adr2_TB=3;  
    w_adr_TB=2;
    w_data_TB= 32'd13;
    #10;
    //test case read to adr 2 with write enable off
    en_TB=0;
    adr1_TB=2;   
    adr2_TB=3;  
    w_adr_TB=3;
    w_data_TB= 32'd14;
    #10;
    //test case read 0
    en_TB=0;
    adr1_TB=0;   
    adr2_TB=0;
    w_adr_TB=0;
    w_data_TB= 32'd9;
    #10; 
    //test case write to 0 register
    en_TB=1;
    adr1_TB=0;   
    adr2_TB=1;  
    w_adr_TB=0;
    w_data_TB= 32'd15;
    #10;
    //test case write to 0 register
    en_TB=1;
    adr1_TB=1;   
    adr2_TB=0;  
    w_adr_TB=0;
    w_data_TB= 32'd3;
    #10;
   $stop;
    end
endmodule
