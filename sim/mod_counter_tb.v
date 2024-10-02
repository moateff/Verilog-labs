`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/23/2024 06:58:39 PM
// Design Name: 
// Module Name: mod_counter_tb
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


module mod_counter_tb(
    );
    parameter N = 4;
    reg clk;
    reg reset_n, enable;
    reg [N - 1:0] FINAL_VALUE;
    wire [N - 1:0] Q;
    
    mod_counter #(.N(N)) uut(.clk(clk), .reset_n(reset_n), .enable(enable), .FINAL_VALUE(FINAL_VALUE), .Q(Q));
    
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
        FINAL_VALUE = 5;
        #(T / 2);
        reset_n = 1'b1;
        #(T / 2);
        enable = 1'b1;
    end
endmodule
