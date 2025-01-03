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
        
        if(int_taken) begin
            PC_SEL=4;
        end
        else begin
            case(opcode)
    // depending on the function code, the decoder will set the proper ALU function code, src a and b select as well as the reg file select
    // these values will be transfered to the regfile adn the ALU in order for the otter to proform the correct operations
            
    ///csr type codes 
                7'b1110011: begin
                    case(funct3)
                         // mret
                        3'b000: begin
                            PC_SEL = 5;//mepc
                        end
                        // csrrw
                        3'b001: begin
                            RF_SEL = 1;
                            ALU_FUN = 4'b1001;
                        end
                        // csrrs
                        3'b010: begin
                             RF_SEL = 1;
                             ALU_FUN = 4'b0110;
                             srcB_SEL = 4;
                        end
                        // csrrc
                        3'b011: begin
                            RF_SEL = 1;
                            ALU_FUN = 4'b0111;
                            srcA_SEL = 2; 
                            srcB_SEL = 4;
                        end
                    endcase
                end
    
            // R type 
            7'b0110011: begin
                        srcA_SEL = 2'b0;
                        srcB_SEL = 3'b0; 
                        RF_SEL = 2'b11;
                case(funct3)
                    3'b000: begin
                        case(ir_30)
                            //sub
                            1'b1: ALU_FUN = 4'b1000;
                            //add
                            1'b0: ALU_FUN = 4'b0000;
                            endcase
                         end
                    //sll
                     3'b001: begin
                        ALU_FUN = 4'b0001;
                        end
                    //slt
                    3'b010: begin
                        ALU_FUN = 4'b0010;
                        end 
                    //sltu
                     3'b011: begin
                        ALU_FUN = 4'b0011;
                        end
                    //xor
                    3'b100: begin
                        ALU_FUN = 4'b0100;
                        end
                        
                    3'b101: begin 
                        case(ir_30)
                        //"sra"
                        1'b1: ALU_FUN = 4'b1101;
                        //"srl"
                        1'b0: ALU_FUN = 4'b0101;
                        endcase
                    end

                    //or
                     3'b110: begin
                        ALU_FUN = 4'b0110;
                        end
                    //and 
                    3'b111: begin
                        ALU_FUN = 4'b0111;
                        end
                  
                endcase
            end
            //----------------------------------------------------------------
            // I type 
            
            //jalr
            7'b1100111: begin
                RF_SEL = 2'b0;
                PC_SEL = 3'b001;
                //srcB_SEL = 3'd1; // CHANGES
            end
            
            
            //I type opcode first half
             7'b0000011: begin
                srcA_SEL = 2'b0; //rs1
                srcB_SEL = 3'b001; //I type imm
                RF_SEL = 2'b10; //2 since we want dout2
                //PC_SEL defaults to 0;
                ALU_FUN = 4'b0000; //add
                //"lb", "lbu", "lh", "lhu", "lw" use same controls
            end

            //I type opcode second half 
            7'b0010011: begin
                srcA_SEL = 2'b0;
                srcB_SEL = 3'b001;
                RF_SEL = 2'b11;
                case(funct3)
                    //addi
                     3'b000: begin
                        ALU_FUN = 4'b0000;
                    end
                    //andi
                     3'b111: begin
                        ALU_FUN = 4'b0111;
                    end
                    //slti
                     3'b010: begin
                        ALU_FUN = 4'b0010;
                    end
                    //stliu
                     3'b011: begin
                        ALU_FUN = 4'b0011;
                    end
                    //ori
                     3'b110: begin
                        ALU_FUN = 4'b0110;
                    end
                    //xori
                     3'b100: begin
                        ALU_FUN = 4'b0100;
                    end
                    //slli
                    3'b001: begin
                        ALU_FUN = 4'b0001;
                    end
                3'b101: begin
                        case(ir_30)
                        //"srai"
                        1'b1: ALU_FUN = 4'b1101;
                        //"srli"
                        1'b0: ALU_FUN = 4'b0101;
                        endcase
                        end
                endcase
            end
            

            //-------------------------------------------------------------------------------
            // S type 
            7'b0100011: begin
            srcB_SEL = 3'b010;
            end
            //------------------------------------------------------------------------------------
            // B type
            7'b1100011: begin
                case(funct3)
                    //"beq"
                    3'b000: if(br_eq) PC_SEL = 3'b010;// pc sel is 2 since we branch
                            else PC_SEL = 3'b000;
                    //"bge"
                    3'b101: if(!br_lt) PC_SEL = 3'b010;// pc sel is 2 since we branch
                    else PC_SEL = 3'b000;
                    //"bgeu"
                    3'b111: if(!br_ltu) PC_SEL = 3'b010;// pc sel is 2 since we branch
                    else PC_SEL = 3'b000;
                    //"blt"
                    3'b100: if(br_lt) PC_SEL = 3'b010;// pc sel is 2 since we branch
                    else PC_SEL = 3'b000;
                    //"bltu"
                    3'b110: if(br_ltu) PC_SEL = 3'b010;// pc sel is 2 since we branch
                    else PC_SEL = 3'b000;
                    //"bne"
                    3'b001: if(!br_eq) PC_SEL = 3'b010;// pc sel is 2 since we branch
                    else PC_SEL = 3'b000;
                    default:;
                endcase

            end
            //----------------------------------------------------------------------------------------------
              // J type
            7'b1101111: begin
                PC_SEL=3'b011;
            end
            //----------------------------------------------------------------------------------------------------------------
            // U type
            7'b0110111: begin
                //lui
                ALU_FUN = 4'b1001;
                srcA_SEL = 2'b01;
                RF_SEL = 2'b11;
                
            end
            //utype second opcode
            7'b0010111: begin
                srcA_SEL = 2'b01;
                srcB_SEL = 3'b011;
                RF_SEL = 2'b11;
            end
         
            default:; //blank default
        endcase
       end
    end
endmodule

