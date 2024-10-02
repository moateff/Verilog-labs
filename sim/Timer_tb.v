`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/24/2024 03:13:13 PM
// Design Name: 
// Module Name: Timer_tb
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


module Timer_tb(
    );
    parameter FINAL_VALUE = 255;
    reg clk;
    reg reset_n;
    reg enable;
    wire done;
    
    Timer #(.FINAL_VALUE(FINAL_VALUE)) uut(.clk(clk), .reset_n(reset_n), .enable(enable), .done(done));
    
    localparam T = 10;
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
