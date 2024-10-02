`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/17/2024 04:37:10 PM
// Design Name: 
// Module Name: Shift_register
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


module Shift_register #(parameter N = 4)(
    input [N-1:0] I,
    output [N-1:0] O,
    input clk,
    input in,
    output out,
    input shift_n_load,
    input reset_n
    );
    reg [N-1:0] Q_next, Q_reg;
    
    always@(negedge clk)
    begin
        if(!reset_n)
            Q_reg <= 'b0;
        else
            Q_reg <= Q_next;
    end
    
    always@(I, Q_reg, in)
    begin
        if(shift_n_load)
            Q_next = I;
        else
            Q_next = {in, Q_reg[N-1:1]}; //Shift Right
            //Q_next = {Q_reg[N-2:0], in}; //Shift left
    end
    
    assign Q = Q_reg;
    assign out = Q_reg[0]; //Shift Right
    //assign out = Q_reg[N-1]; //Shift left
endmodule
