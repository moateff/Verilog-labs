`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/23/2024 07:24:21 PM
// Design Name: 
// Module Name: BCD_counter
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


module BCD_counter(
    input clk,
    input reset_n, enable,
    output done,
    output [3:0] Q
    );
    
    reg [3:0] Q_next, Q_reg;
    
    always @(negedge clk, negedge reset_n)
    begin
        if(~reset_n)
            Q_reg <= 'b0;
        else if(enable)
            Q_reg <= Q_next;
        else
            Q_reg <= Q_reg;
    end
    
    assign done = Q_reg == 9;
    
    always @(done, Q_reg)
    begin
        Q_next = done? 'b0: Q_reg + 1;
    end 
    
    assign Q = Q_reg;
endmodule