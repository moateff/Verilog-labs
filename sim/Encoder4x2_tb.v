`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/12/2024 03:31:26 PM
// Design Name: 
// Module Name: Encoder4x2_tb
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


module Encoder4x2_tb(
    );
    reg [3:0]x;
    reg en;
    wire [1:0]y;
    integer i;
    
    Encoder4x2 uut(.x(x), .en(en), .y(y));
    
    initial
    begin
        #170 $finish;
    end
    
     initial
     begin
        x = 0;
        en = 1;
        for(i = 0;i < 32; i = i + 1)
        begin
            #5 x = x + 1;
        end
     end
endmodule
