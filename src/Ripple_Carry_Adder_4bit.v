`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/08/2024 04:05:57 PM
// Design Name: 
// Module Name: Adder_4bit
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


module Ripple_Carry_Adder_4bit(
    input [3:0]x, y, 
    input cin,
    output [3:0]s, 
    output cout
    );
    wire [2:0]c;
    Full_Adder FA0(.x(x[0]), .y(y[0]), .cin(cin), .s(s[0]), .cout(c[0]));
    Full_Adder FA1(.x(x[1]), .y(y[1]), .cin(c[0]), .s(s[1]), .cout(c[1]));
    Full_Adder FA2(.x(x[2]), .y(y[2]), .cin(c[1]), .s(s[2]), .cout(c[2]));
    Full_Adder FA3(.x(x[3]), .y(y[3]), .cin(c[2]), .s(s[3]), .cout(cout));
endmodule
