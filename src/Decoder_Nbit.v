`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/11/2024 11:18:35 PM
// Design Name: 
// Module Name: Decoder_Nbit
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


module Decoder_Nbit #(parameter N = 3)(
    input [N-1:0]x,
    input en,
    output reg [0:2**N-1]y
    );
    always @(*)
    begin
        y = 'b0;
        if(en) y[x] = 1'b1;
        else y = 'b0;  
    end
endmodule
