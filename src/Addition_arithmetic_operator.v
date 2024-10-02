`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/09/2024 10:14:38 PM
// Design Name: 
// Module Name: Addition_Arithmetic_operator
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


module Addition_arithmetic_operator #(parameter N = 8)(
    input [N-1:0]x, y,
    output [N-1:0]s, 
    output cout, overflow
    );
    assign {cout, s} = x + y;
    assign overflow = (x[N-1] & y[N-1] & ~s[N-1]) | (~x[N-1] & ~y[N-1] & s[N-1]);
endmodule
