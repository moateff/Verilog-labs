`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/12/2024 02:46:29 PM
// Design Name: 
// Module Name: Encoder4x2
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


module Encoder4x2(
    input [3:0]x,
    input en,
    output reg [1:0]y
    );
    integer i;
    always @(*)
    begin
        y = 2'bx;
        if(en)
        begin
            //If-else
            /*
            if (x == 4'b0001) y = 2'b00;
            else if (x == 4'b0010) y = 2'b01;
            else if (x == 4'b0100) y = 2'b10;
            else if (x == 4'b1000) y = 2'b11;
            else y = 2'bx;
            */
                        
            //Switch Cases
            /*
            case(x)
            4'b0001: y = 2'b00;
            4'b0010: y = 2'b01;
            4'b0100: y = 2'b10;
            4'b1000: y = 2'b11;
            default: y = 2'bx;
            endcase
            */
        end
        else y = 2'bx;
    end
endmodule
