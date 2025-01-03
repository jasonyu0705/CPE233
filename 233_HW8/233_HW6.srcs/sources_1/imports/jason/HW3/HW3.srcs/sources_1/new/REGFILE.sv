`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2024 02:45:39 PM
// Design Name: 
// Module Name: REGFILE
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


module REGFILE(
    input logic en,
    input logic [4:0] adr1 ,
    input logic [4:0] adr2 ,
    input logic [4:0] w_adr ,
    input logic [31:0] w_data,
    input logic CLK,
    output logic  [31:0] rs1,
    output logic [31:0] rs2
    );
    // Create a memory module with 16-bit width and 512 addresses
    logic [31:0] register [0:31];

    // Initialize the memory to be all 0s
    initial begin
        int i;
        for (i=0; i<32; i=i+1) begin
            register[i] = 0;
        end
    end

    //asynchronously set the registers to be 0
    assign rs1=register[adr1];
    assign rs2=register[adr2];
    //check that the enable is active and that the write adress is not 0 
    always_ff @( posedge CLK)begin
    // if enable is on
        if(en) begin
            if (w_adr !=0) begin
                register[w_adr]<= w_data;
            end
        end
    end
endmodule
