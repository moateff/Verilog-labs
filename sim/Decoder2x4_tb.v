`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/11/2024 10:58:11 PM
// Design Name: 
// Module Name: Decoder2x4_tb
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


module Decoder2x4_tb(
    );
    reg en;
    reg [1:0]x;
    wire [0:3]y;
    
    Decoder2x4 uut(.x(x), .en(en), .y(y));
    
    initial
    begin
        #40 $finish;
    end
    
    initial
    begin
        en = 1'b1;
        x = 2'b00;
        #5
        
        x = 2'b01;
        #5
        
        x = 2'b10;
        #5
        
        x = 2'b11;
        #5
        
        x = 2'bx;
        #5
        
        en = 1'b0;
        x = 2'b00;
        #5
        
        x = 2'b01;
        #5
        
        x = 2'b10;
        #5;
    end
endmodule
