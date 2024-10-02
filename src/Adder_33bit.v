`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/08/2024 05:39:23 PM
// Design Name: 
// Module Name: Adder_33bit
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


module Adder_33bit(
    input [32:0]x, y,
    output [32:0]s, 
    output cout
    );
    Ripple_Carry_Adder_Nbit#(.N(33)) RCA33(.x(x), .y(y), .cin(0), .s(s), .cout(cout));
endmodule
