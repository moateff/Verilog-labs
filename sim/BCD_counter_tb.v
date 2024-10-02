`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/23/2024 07:27:20 PM
// Design Name: 
// Module Name: BCD_counter_tb
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


module BCD_counter_tb(
    );
    reg clk;
    reg reset_n, enable;
    wire done;
    wire [3:0] Q;
    
    BCD_counter uut(.clk(clk), .reset_n(reset_n), .enable(enable), .done(done), .Q(Q));
    
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