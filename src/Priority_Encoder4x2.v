`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/12/2024 03:55:27 PM
// Design Name: 
// Module Name: Priority_Encoder4x2
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


module Priority_Encoder4x2(
    input [3:0]x,
    input en,
    output z,
    output reg [1:0]y
    );
    assign z = |x;
    always @(*)
    begin
        y = 2'bx;
        if(en)
        begin
            //If-else
            if (x[3] == 1'b1) y = 2'b11;
            else if (x[2] == 1'b1) y = 2'b10;
            else if (x[1] == 1'b1) y = 2'b01;
            else if (x[0] == 1'b1) y = 2'b00;
            else y = 2'bx;
            
            //Switch Cases
            /*
            casex(x)
            4'b1xxx: y = 2'b11;
            4'b01xx: y = 2'b10;
            4'b001x: y = 2'b01;
            4'b0001: y = 2'b00;
            default: y = 2'bx;
            endcase
            */
        end
        else y = 2'bx;
    end
endmodule
