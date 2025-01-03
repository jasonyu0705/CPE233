`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Jason yu
// 
// Create Date: 10/02/2024 04:01:01 PM
// Design Name: 
// Module Name: PC_TOP_TB
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


module PC_TOP_TB();
// initialize inputs and output
    logic [31:0] TB_jalr, TB_branch,TB_jal,TB_mtvec,TB_mepc;
    logic TB_PC_rst;
    logic TB_PC_WE;
    logic [2:0] TB_PC_SEL;
    logic TB_clk;
    logic [31:0] TB_PC_count;
    logic [31:0] TB_PC_Plus_Four;
    
    //set up unit under test
    PC_TOP UUT(.PC_rst(TB_PC_rst),
            .PC_WE(TB_PC_WE), 
            .PC_SEL(TB_PC_SEL),
            .jalr(TB_jalr),
            .branch(TB_branch),
            .jal(TB_jal),
            .mtvec(TB_mtvec),
            .mepc(TB_mepc),
            .clk(TB_clk),
            .PC_count(TB_PC_count),
            .PC_Plus_Four(TB_PC_Plus_Four));
    
    // initialize the clock
    initial begin
        TB_clk=1;
    end
    always begin
        #5 TB_clk=~TB_clk;

   end
   
   always begin
   // initializing values to test the mux
   TB_jalr = 4'b0010;
   TB_branch = 4'b0011;
   TB_jal = 4'b0100;
   TB_mtvec = 4'b0101;
   TB_mepc = 4'b0110;
   
   //checking reset
   TB_PC_rst=2'b1;
   #10;
   TB_PC_rst=2'b0;
   #10;

   //testing PC
   //incrument by 4
   TB_PC_SEL=4'd0000;
   TB_PC_WE=4'd0001;
   #10; //add 4
   
   //reset the value
   TB_PC_rst=4'd0001;
   #10;
   
   //hold the value
   TB_PC_rst=4'd0000;
   TB_PC_WE=4'd0000;
   #10;
    
   //add another 4 after the hold
   TB_PC_rst=4'd0000; 
   TB_PC_WE=4'd0001;
    #10

   //checking if the mux is working by pussing select to choose all other options in the mux
   
   TB_PC_SEL=4'd0001;
   #10;
    TB_PC_SEL=4'd0010;
   #10;
    TB_PC_SEL=4'd0011;
   #10;
    TB_PC_SEL=4'd0100;
   #10;
    TB_PC_SEL=4'd0101;
   #10;
    $stop;
    end
endmodule
