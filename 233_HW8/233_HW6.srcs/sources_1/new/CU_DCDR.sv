`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2024 07:34:02 PM
// Design Name: 
// Module Name: CU_DCDR
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


module CU_DCDR(
//initiallizing inputs and outputs
    input [6:0] opcode,
    input [2:0] funct3, 
    input ir_30,
    input int_taken,
    input br_eq,
    input br_lt,
    input br_ltu,
    output logic [3:0] ALU_FUN,
    output logic [1:0] srcA_SEL,
    output logic [2:0] srcB_SEL,
    output logic [2:0] PC_SEL,
    output logic [1:0] RF_SEL
    );
always_comb begin
        ALU_FUN = 4'b0;
        srcA_SEL = 2'b0;
        srcB_SEL = 3'b0;
        PC_SEL = 3'b0;
        RF_SEL = 2'b0;
        case(opcode)
    // depending on the function code, the decoder will set the proper ALU function code, src a and b select as well as the reg file select
    // these values will be transfered to the regfile adn the ALU in order for the otter to proform the correct operations
            // R type 
            7'b0110011: begin
                case(funct3)
                    //xor
                    3'b100: begin
                        ALU_FUN = 4'b0100;
                        srcA_SEL = 2'b0;
                        srcB_SEL = 3'b0; 
                        RF_SEL = 2'b11;
                    end
                    //slt
                    3'b010: begin
                        ALU_FUN = 4'b0010;
                        srcA_SEL = 2'b0;
                        srcB_SEL = 3'b0;
                        RF_SEL = 2'b11; 
                    end 
                endcase
            end
            
            // I type 
            7'b0010011: begin
                case(funct3)
                    //slli
                    3'b001: begin
                        ALU_FUN = 4'b0001;
                        srcA_SEL = 2'b0;
                        srcB_SEL = 3'b001;
                        RF_SEL = 2'b11;
                    end
                    //addi
                    3'b000: begin
                        ALU_FUN = 4'b0000;
                        srcA_SEL = 2'b0;
                        srcB_SEL = 3'b001;
                        RF_SEL = 2'b11;
                    end
                endcase
            end
            //I type second opcode 
            7'b1100111: begin
            end
            //I type third opcode
            7'b0000011: begin
            end
            
            // S type 
            7'b0100011: begin
            end
            // B type
            7'b1100011: begin
                case(funct3)
                    //beq
                    3'b000: begin
                        srcA_SEL = 2'b0;
                        srcB_SEL = 3'b0;
                        PC_SEL = 3'b010;
                    end
                endcase
            end
              // J type
            7'b1101111: begin
            end
            // U type
            7'b0110111: begin
                //lui
                ALU_FUN = 4'b1001;
                srcA_SEL = 2'b01;
                RF_SEL = 2'b11;
                
            end
            //utype second opcode
            7'b0010111: begin
            end
          

            default:; //blank default
        endcase
    end

endmodule

