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


module PlusFour(
// declaring inputs and outputs
     input logic [0:31] SUM_IN,
     output logic [0:31] SUM_OUT
     );
     //adds 4 to the imput value adn outputs it
     assign SUM_OUT = 4'b0100+SUM_IN;
endmodule