`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/08/2024 06:01:01 PM
// Design Name: 
// Module Name: Adder_Subtractor
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


module Adder_Subtractor_4bit(
    input [3:0]x, y, 
    input addn_sub,
    output [3:0]s, 
    output cout, overflow
    );
    wire [3:0]g;
    generate
        genvar i;
        for(i = 0; i < 4; i = i+1)
        begin: stage
            assign g[i] = y[i] ^ addn_sub;
        end
    endgenerate
    Ripple_Carry_Adder_4bit RCA4(.x(x), .y(g), .cin(addn_sub), .s(s), .cout(cout));
endmodule
