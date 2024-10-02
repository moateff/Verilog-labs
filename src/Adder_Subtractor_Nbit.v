`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/08/2024 06:55:43 PM
// Design Name: 
// Module Name: Adder_Subtractor_Nbit
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


module Adder_Subtractor_Nbit #(parameter N = 8)(
    input [N-1:0]x, y, 
    input addn_sub,
    output [N-1:0]s, 
    output cout, overflow
    );
    wire [N-1:0]g;
    generate
        genvar i;
        for(i = 0; i < N; i = i+1)
        begin
            assign g[i] = y[i] ^ addn_sub;
        end
    endgenerate
    Ripple_Carry_Adder_Nbit #(.N(N)) RCA(.x(x), .y(g), .cin(addn_sub), .s(s), .cout(cout));
    assign overflow = (x[N-1] & g[N-1] & ~s[N-1]) | (~x[N-1] & ~g[N-1] & s[N-1]);
endmodule
