`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/26/2024 01:49:16 PM
// Design Name: 
// Module Name: LSER_counter_tb
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


module LSER_counter_tb(
    );
    parameter N = 3;
    reg clk, reset_n;
    wire [1:N] Q;
    
    LSER_counter #(.N(N)) uut(.clk(clk), .reset_n(reset_n), .Q(Q));
    
    localparam T = 25;
    always
    begin
        clk = 1'b0;
        #(T / 2);
        clk = 1'b1;
        #(T / 2);
    end
    
    initial
    begin
        reset_n = 1'b0;
        #(T / 2);
        reset_n = 1'b1;
        #(T / 2);
    end
endmodule
