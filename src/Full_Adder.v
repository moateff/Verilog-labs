`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/08/2024 03:43:06 PM
// Design Name: 
// Module Name: Full_Adder
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


module Full_Adder(
    input x,y,cin,
    output s, cout
    );
    wire s0, c0, c1;
    Half_Adder HA0(.x(x), .y(y), .sum(s0), .carry(c0));
    Half_Adder HA1(.x(cin), .y(s0), .sum(s), .carry(c1));
    assign cout = c0 | c1;
endmodule
