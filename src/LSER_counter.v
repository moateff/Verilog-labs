`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/26/2024 01:40:45 PM
// Design Name: 
// Module Name: LSER_counter
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


module LSER_counter #(parameter N = 3)(
    input clk, reset_n,
    output [1:N] Q
    );
    
    reg [1:N] Q_next, Q_reg;
    wire tap;
    
    always @(negedge clk or negedge reset_n)
    begin
        if(~reset_n)
            Q_reg <= 'b1;
        else
            Q_reg <= Q_next;
    end 
    
    always @(tap, Q_reg)
        Q_next = {tap, Q[1:N - 1]};
    
    assign Q = Q_reg;
    
    assign tap = Q_reg[3] ^ Q_reg[2];
    
endmodule
