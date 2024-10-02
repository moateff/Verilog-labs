`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/11/2024 10:51:51 PM
// Design Name: 
// Module Name: Decoder2x4
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


module Decoder2x4(
    input [1:0]x,
    input en,
    output reg [0:3]y
    );
    always @(*)
    begin
        y = 4'b0;
        if(en)
        begin
            //If-else
            /*
            if (x == 2'b00) y[0] = 1'b1;
            else if (x == 2'b01) y[1] = 1'b1;
            else if (x == 2'b10) y[2] = 1'b1;
            else if (x == 2'b11) y[3] = 1'b1;
            else y = 4'b0;
            */
            
            //Direct Assignment
            //y[x] = 1'b1;
            
            //Switch Cases
            case(x)
            2'b00: y[0] = 1'b1;
            2'b01: y[1] = 1'b1;
            2'b10: y[2] = 1'b1;
            2'b11: y[3] = 1'b1;
            default: y = 4'b0;
            endcase
        end
        else y = 4'b0;
    end
endmodule
