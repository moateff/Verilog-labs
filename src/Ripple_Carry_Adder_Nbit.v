`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/08/2024 05:00:13 PM
// Design Name: 
// Module Name: Adder_Nbit
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


module Ripple_Carry_Adder_Nbit#(parameter N = 8)(
    input [N-1:0]x, y, 
    input cin,
    output [N-1:0]s, 
    output cout
    );
    wire [N:0]c;
    assign c[0] = cin;
    assign cout = c[N];
    
    generate
        genvar i;
        for(i = 0; i < N; i = i+1)
        begin: stage
            Full_Adder FA(.x(x[i]), .y(y[i]), .cin(c[i]), .s(s[i]), .cout(c[i+1]));
        end
    endgenerate
endmodule
