`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/11/2024 03:44:50 PM
// Design Name: 
// Module Name: Mux4x1_Nbit
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


module Mux4x1_Nbit #(parameter N = 4)(
    input [N-1:0]x0, x1, x2, x3,
    input [1:0]s,
    output reg [N-1:0]z
    );
    always@(*)
    begin
        //Direct Assignment
        //z = s[1]?(s[0]? x3:x2):(s[0]? x1:x0);
        
        //If-else
        /*
        if(s == 2'b00) z = x0;
        else if(s == 2'b01) z = x1;
        else if(s == 2'b10) z = x2;
        else if(s == 2'b11) z = x3;
        else z = 'bx;
        */
        
        //Switch Cases
        case(s)
        2'b00: z = x0;
        2'b01: z = x1;
        2'b10: z = x2;
        2'b11: z = x3;
        default: z = 'bx;
        endcase
    end
endmodule
