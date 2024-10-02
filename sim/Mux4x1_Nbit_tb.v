`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/11/2024 03:52:26 PM
// Design Name: 
// Module Name: Mux4x1_Nbit_tb
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


module Mux4x1_Nbit_tb(
    );
    parameter N = 4;
    reg [N-1:0]x0, x1, x2, x3;
    reg [1:0]s;
    wire [N-1:0]z;
    
    Mux4x1_Nbit #(.N(N)) uut(.x0(x0), .x1(x1), .x2(x2), .x3(x3), .s(s), .z(z));
    
    initial
    begin
        #55 $finish;
    end
        
    initial
    begin
        x0 = 4'd3;
        x1 = 4'd5;
        x2 = 4'd7;
        x3 = 4'd11;
        s = 2'b00;
        #5
        
        s = 2'b01;
        #5
        
        s = 2'b10;
        #5
        
        s = 2'b11;
        #5;
        
        #5
        x0 = 4'd2;
        
        #5
        x1 = 4'd4;
        
        #5
        x2 = 4'd6;
        
        #5
        x3 = 4'd10;  
    end
    
endmodule
