`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2024 07:35:43 PM
// Design Name: 
// Module Name: CU_FSM
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


module CU_FSM(
//initiallizing inputs and outputs
input rst,
    input clk,
    input [6:0] opcode, 
    input [2:0] funct3,
    input intr, 
    output logic PC_WE,
    output logic RF_WE,
    output logic mem_WE2,
    output logic memRDEN1,
    output logic memRDEN2,
    output logic reset,
    output logic csr_WE,
    output logic int_taken,
    output logic mret_exec
    );
    // defining states and statetypes in order to make it clear what state we are in
    typedef enum { ST_INIT, ST_FETCH, ST_EXEC, ST_WRITEBACK } state_type;
    state_type NS, PS;

    //state reg
    always_ff @( posedge clk ) begin
        if (rst) PS <= ST_INIT;
        else PS <= NS;
    end


    always_comb begin
        //sets all outputs to 0 at the start of each clock cycle
        PC_WE  = 1'b0;
        RF_WE  = 1'b0;
        mem_WE2  = 1'b0;
        memRDEN1  = 1'b0;
        memRDEN2  = 1'b0;
        reset  = 1'b0;
        csr_WE  = 1'b0;
        int_taken  = 1'b0;
        mret_exec  = 1'b0;


        case(PS)
            //initaly state
            ST_INIT: begin
            // in the inital state, we set our reset to 0
                reset = 1'b1;
                NS = ST_FETCH;
            end

            //fetch state
            ST_FETCH: begin
            // set the read enable 1 to be 1 ( so that we can fetch the data)
                memRDEN1 = 1'b1;
                NS = ST_EXEC;
            end

            //exec state
            ST_EXEC: begin
                // depending on the op code, we will be refering to different instructions and will therefore beed to set the write enables to different things
                // the next state will also change depending on the op code
                case(opcode)

                    // R type
                    7'b0110011: begin
                        PC_WE = 1;
                        RF_WE = 1;
                        NS = ST_FETCH;
                    end
                    
                    // I type
                    7'b0010011: begin
                        PC_WE = 1;
                        RF_WE = 1;
                        NS = ST_FETCH;
                    end
                    7'b1100111: begin //jalr
                        PC_WE = 1;
                        RF_WE = 1;
                        NS = ST_FETCH;
                    end
                    7'b0000011: begin //non lui load
                        memRDEN2 = 1;
                        NS = ST_WRITEBACK;
                    end

                    // S type
                    7'b0100011: begin
                        PC_WE = 1;
                        RF_WE = 1;
                        NS = ST_FETCH;
                    end

                    // B type
                    7'b1100011: begin
                        PC_WE = 1;
                        NS = ST_FETCH;
                    end

                    // U type
                    7'b0110111: begin
                        PC_WE = 1;
                        RF_WE = 1;
                        NS = ST_FETCH;
                        
                    end
                    7'b0010111: begin 
                        PC_WE = 1;
                        RF_WE = 1;
                        NS = ST_FETCH;
                    end

                    // J type
                    7'b1101111: begin
                        PC_WE = 1;
                        RF_WE = 1;
                        NS = ST_FETCH;
                    end
                       // by default, go back to the init state
                    default:NS = ST_INIT; 
                endcase

            end
            // set the write enables to 1 in the writeback stage so that we can write the data
            ST_WRITEBACK: begin
                PC_WE = 1;
                RF_WE = 1;
                NS = ST_FETCH;
            end
            // by default, go back to the init state
            default: NS = ST_INIT;
        endcase
    end

endmodule

