/*********************************************************
 *
 *  Module: MIE.v
 *  Project: Hunter_RV32
 *  Author: Ali El-Said (ali.elsaid@aucegypt.edu), Ahmed Wael (awael@aucegypt.edu), Habiba Bassem (habibabassem@aucegypt.edu)
 *  Description: Register for MIE
 *
 *********************************************************/
`timescale 1ns/1ns

module MIE (    
    clk,
    rst,
    load,
    data_in, 
    data_out );

    input clk;
    input rst;
    input load;
    input   [3:0] data_in;
    output  reg [3:0] data_out;
    
    always @ (posedge clk or posedge rst) begin
    
        if(rst)
            data_out <= 4'd15;
        else if (load)
                data_out <= data_in;
            else 
                data_out <= data_out;
    end

endmodule

