`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/23/2024 06:30:54 PM
// Design Name: 
// Module Name: mod_couner
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


module mod_counter #(parameter N = 4)(
    input clk,
    input reset_n, enable,
    input [N - 1:0] FINAL_VALUE,
    output [N - 1:0] Q
    );
    
    reg [N - 1:0] Q_next, Q_reg;
    wire done;
    
    always @(negedge clk, negedge reset_n)
    begin
        if(~reset_n)
            Q_reg <= 'b0;
        else if(enable)
            Q_reg <= Q_next;
        else
            Q_reg <= Q_reg;
    end
    
    assign done = Q_reg == FINAL_VALUE;
    
    always @(done, Q_reg)
    begin
        Q_next = done? 'b0: Q_reg + 1;
    end 
    
    assign Q = Q_reg;
endmodule
