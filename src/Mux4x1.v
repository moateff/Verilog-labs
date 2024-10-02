`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/08/2024 02:19:20 PM
// Design Name: 
// Module Name: Mux4x1
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


module Mux4x1(
    input [3:0]x,
    input [1:0]s,
    output z
    );
    Mux2x1(.x0(x[0]), .x1(x[1]), .sel(s[0]), .z(g0));
    Mux2x1(.x0(x[2]), .x1(x[3]), .sel(s[0]), .z(g1));
    Mux2x1(.x0(g0), .x1(g1), .sel(s[1]), .z(z));
endmodule
