`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/15/2024 03:37:50 PM
// Design Name: 
// Module Name: D_latch
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


module D_latch(
    input D,
    input clk,
    output reg Q,
    output Q_b
    );
    always@(clk or D)
    begin
        Q = Q;
        if(clk)
            Q = D;
        else
            Q = Q;
    end
    assign Q_b = ~Q;
endmodule
