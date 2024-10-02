`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/23/2024 03:28:57 PM
// Design Name: 
// Module Name: asynchronous_counter
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


module asynchronous_counter #(parameter N = 4)(
    input clk,
    input reset_n, enable,
    output [N - 1:0] Q
    );
    T_FF FF0(.T(enable), .clk(clk), .reset_n(reset_n), .Q(Q[0]));
    
    generate
        genvar i;
        for(i = 1; i < N; i = i+1)
        begin
            T_FF FF(.T(enable), .clk(Q[i-1]), .reset_n(reset_n), .Q(Q[i]));
        end
    endgenerate 
endmodule
