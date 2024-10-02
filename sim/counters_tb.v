`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/23/2024 03:43:44 PM
// Design Name: 
// Module Name: asynchronous_counters_tb
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


module counters_tb(
    );
    parameter N = 4;
    reg clk;
    reg reset_n, enable;
    reg up;
    wire [N - 1:0] Q;
    
    up_down_counter #(.N(N)) uut(.clk(clk), .reset_n(reset_n), .enable(enable), .up(up), .Q(Q));
    
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
        up = 1'b1;
        #(T / 2);
        reset_n = 1'b1;
        #(T / 2);
        enable = 1'b1;
        #(20 * T);
        up = 1'b0;
    end
endmodule
