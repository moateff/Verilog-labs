`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/09/2024 09:42:05 PM
// Design Name: 
// Module Name: Adder_Subtractor_Nbit_tb
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


module Adder_Subtractor_Nbit_tb();
    parameter N = 4;
    reg [N-1:0]x, y; 
    reg addn_sub;
    wire [N-1:0]s; 
    wire cout, overflow;
    
    Adder_Subtractor_Nbit#(.N(N))uut(.x(x), .y(y), .addn_sub(addn_sub), .s(s), .cout(cout), .overflow(overflow));
    
    initial
    begin
        #40 $finish;
    end
    
    initial
    begin
        addn_sub = 1'b0;
        x = 4'd6;
        y = 4'd3;
        #10
        
        addn_sub = 1'b0;
        x = -4'd6;
        y = 4'd3;
        #10
        
        addn_sub = 1'b0;
        x = 4'd6;
        y = -4'd3;
        #10
        
        addn_sub = 1'b0;
        x = -4'd6;
        y = -4'd3;
        #10;
    end
endmodule
