`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/24/2024 01:38:50 PM
// Design Name: 
// Module Name: Ndigit_BCD_counter_tb
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


module Ndigit_BCD_counter_tb(
    );
    parameter N = 3;
    reg clk;
    reg reset_n, enable;
    wire done;
    //wire [3:0] Q [N-1:0];
    
    Ndigit_BCD_counter #(.N(N)) uut(.clk(clk), .reset_n(reset_n), .enable(enable), .done(done));
    
    localparam T = 20;
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
        enable = 1'b0;
        #(T / 2);
        reset_n = 1'b1;
        #(T / 2);
        enable = 1'b1;
    end
endmodule
