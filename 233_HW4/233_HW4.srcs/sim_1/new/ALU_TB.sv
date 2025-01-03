`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2024 04:37:06 PM
// Design Name: 
// Module Name: ALU_TB
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


module ALU_TB();
    logic [31:0] srcA_TB;
    logic [31:0] srcB_TB;
    logic [3:0] alu_fun_TB;
    logic [31:0] alu_result_TB;
    
    ALU UUT (.srcA(srcA_TB), .srcB(srcB_TB), .alu_fun(alu_fun_TB), .alu_result(alu_result_TB));
    
    initial begin
    //add3
    
    #10 alu_fun_TB = 4'b0000;
        srcA_TB = 32'hA50F96C3;
        srcB_TB = 32'h5AF0693C;
    #10 alu_fun_TB = 4'b0000;
        srcA_TB = 32'h84105F21;
        srcB_TB = 32'h7B105FDE; 
    #10 alu_fun_TB = 4'b0000;
        srcA_TB = 32'hFFFFFFFF;
        srcB_TB = 32'h00000001;

    //sub 
    #10 alu_fun_TB = 4'b1000;
        srcA_TB = 32'h00000000;
        srcB_TB = 32'h00000001;
    #10 alu_fun_TB = 4'b1000;
        srcA_TB = 32'hAA806355;
        srcB_TB = 32'h550162AA;
    #10 alu_fun_TB = 4'b1000;
        srcA_TB = 32'h550162AA;
        srcB_TB = 32'hAA806355;
        
    //and 
    #10 alu_fun_TB = 4'b0111;
        srcA_TB = 32'hA55A00FF;
        srcB_TB = 32'h5A5AFFFF;
    #10 alu_fun_TB = 4'b0111;
        srcA_TB = 32'hC3C3F966;
        srcB_TB = 32'hFF669F5A;

    //or
    #10 alu_fun_TB = 4'b0110;
        srcA_TB = 32'h9A9AC300;
        srcB_TB = 32'h65A3CC0F;
    #10 alu_fun_TB = 4'b0110;
        srcA_TB = 32'hC3C3F966;
        srcB_TB = 32'hFF669F5A;

    //xor
    #10 alu_fun_TB = 4'b0100;
        srcA_TB = 32'hAA5500FF;
        srcB_TB = 32'h5AA50FF0;
    #10 alu_fun_TB = 4'b0100;
        srcA_TB = 32'hA5A56C6C;
        srcB_TB = 32'hFF00C6FF;

    //srl 
    #10 alu_fun_TB = 4'b0101;
        srcA_TB = 32'h805A6CF3;
        srcB_TB = 32'h00000010;
    #10 alu_fun_TB = 4'b0101;
        srcA_TB = 32'h705A6CF3;
        srcB_TB = 32'h00000005;
    #10 alu_fun_TB = 4'b0101;
        srcA_TB = 32'h805A6CF3;
        srcB_TB = 32'h00000000;
    #10 alu_fun_TB = 4'b0101;
        srcA_TB = 32'h805A6CF3;
        srcB_TB = 32'h00000100;

    //sll
    #10 alu_fun_TB = 4'b0001;
        srcA_TB = 32'h805A6CF3;
        srcB_TB = 32'h00000010;
    #10 alu_fun_TB = 4'b0001;
        srcA_TB = 32'h805A6CF3;
        srcB_TB = 32'h00000005;
    #10 alu_fun_TB = 4'b0001;
        srcA_TB = 32'h805A6CF3;
        srcB_TB = 32'h00000100;

    //sra
    #10 alu_fun_TB = 4'b1101;
        srcA_TB = 32'h805A6CF3;
        srcB_TB = 32'h00000010;
    #10 alu_fun_TB = 4'b1101;
        srcA_TB = 32'h705A6CF3;
        srcB_TB = 32'h00000005;
    #10 alu_fun_TB = 4'b1101;
        srcA_TB = 32'h805A6CF3;
        srcB_TB = 32'h00000000;
    #10 alu_fun_TB = 4'b1101;
        srcA_TB = 32'h805A6CF3;
        srcB_TB = 32'h00000100;

    //slt 
    #10 alu_fun_TB = 4'b0010;
        srcA_TB = 32'h7FFFFFFF;
        srcB_TB = 32'h80000000;
    #10 alu_fun_TB = 4'b0010;
        srcA_TB = 32'h80000000;
        srcB_TB = 32'h00000001;
    #10 alu_fun_TB = 4'b0010;
        srcA_TB = 32'h00000000;
        srcB_TB = 32'h00000000;
    #10 alu_fun_TB = 4'b0010;
        srcA_TB = 32'h55555555;
        srcB_TB = 32'h55555555;

    //sltu 
    #10 alu_fun_TB = 4'b0011;
        srcA_TB = 32'h7FFFFFFF;
        srcB_TB = 32'h80000000;
    #10 alu_fun_TB = 4'b0011;
        srcA_TB = 32'h80000000;
        srcB_TB = 32'h00000001;
    #10 alu_fun_TB = 4'b0011;
        srcA_TB = 32'h00000000;
        srcB_TB = 32'h00000000;
    #10 alu_fun_TB = 4'b0011;
        srcA_TB = 32'h55AA55AA;
        srcB_TB = 32'h55AA55AA;

    //lui copy 
    #10 alu_fun_TB = 4'b1001;
        srcA_TB = 32'h01234567;
        srcB_TB = 32'h76543210;
    #10 alu_fun_TB = 4'b1001;
        srcA_TB = 32'hFEDCBA98;
        srcB_TB = 32'h89ABCDEF;
    $stop;
    end
endmodule
