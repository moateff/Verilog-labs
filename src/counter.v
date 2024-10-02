`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/23/2024 04:25:41 PM
// Design Name: 
// Module Name: counter
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


module counter #(parameter N = 8)(
    input clk,
    input reset_n, enable,
    output [N - 1:0] Q
    );
    
    reg [N - 1:0] Q_next, Q_reg;
    
    always @(negedge clk, negedge reset_n)
    begin
        if(~reset_n)
            Q_reg <= 'b0;
        else if(enable)
            Q_reg <= Q_next;
        else
            Q_reg <= Q_reg;
    end
        
    always @(Q_reg)
        Q_next = Q_reg + 1;
            
    assign Q = Q_reg;
endmodule