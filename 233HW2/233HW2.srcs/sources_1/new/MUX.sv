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


module MUX(
//initializing varibles
    input logic [31:0] SUM,
    input logic [31:0] jalr,
    input logic [31:0] branch,
    input logic [31:0] jal,
    input logic [31:0] mtvec,
    input logic [31:0] mepc,
    input logic [2:0] PC_SEL,
    output logic [31:0] MUX_OUT
    );
    //this always comb block will set MUX_OUT to a value depending on what the selector of the mux is
    always_comb begin
        if (PC_SEL==0) // select =0 option
        begin
            MUX_OUT=SUM;
            end
        else if(PC_SEL==1) // select =1 option
        begin
            MUX_OUT=jalr;
            end
         else if(PC_SEL==2) // select =2 option
         begin
            MUX_OUT=branch;
            end
          else if(PC_SEL==3)// select =3 option
          begin
            MUX_OUT=jal;
           end
          else if(PC_SEL==4)// select =4 option
          begin
            MUX_OUT=mtvec;
            end
           else     // select =5 option
           begin
            MUX_OUT=mepc;
            end

end
endmodule
