`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/23/2024 05:47:25 PM
// Design Name: 
// Module Name: load_counter
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


module load_counter #(parameter N = 4)(
    input clk,
    input reset_n, enable,
    input up,
    output [N - 1:0] Q,
    input load,
    input [N - 1:0] I
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
    
    always @(Q_reg, up, load)
    begin
        casex({load,up})
            2'b00: Q_next = Q_reg - 1; 
            2'b01: Q_next = Q_reg + 1;
            2'b1x: Q_next = I;
            default: Q_next = Q_reg;
        endcase
    end
    
    assign Q = Q_reg;
endmodule

