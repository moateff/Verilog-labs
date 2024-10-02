`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/23/2024 03:56:23 PM
// Design Name: 
// Module Name: synchronous_counter
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


module synchronous_counter #(parameter N = 4)(
    input clk,
    input reset_n, enable,
    output [N - 1:0] Q
    );
    wire [N - 1:0] Q_next;
    
    assign Q_next[0] = enable;
    T_FF FF0(.T(Q_next[0]), .clk(clk), .reset_n(reset_n), .Q(Q[0]));
    
    generate
        genvar i;
        for(i = 1; i < N; i = i+1)
        begin
            assign Q_next[i] = Q_next[i-1] & Q[i-1];
            T_FF FF(.T(Q_next[i]), .clk(clk), .reset_n(reset_n), .Q(Q[i]));
        end
    endgenerate 
endmodule
