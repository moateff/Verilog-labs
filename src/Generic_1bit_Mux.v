`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/11/2024 04:34:39 PM
// Design Name: 
// Module Name: Generic_1bit_Mux
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


module Generic_1bit_Mux #(parameter INs = 5)(
    input [INs-1:0]x,
    input [$clog2(INs)-1:0]s,
    output reg z
    );
    integer i;
    always@(*)
    begin
        z = 'bx;
        for(i = 0; i < INs; i = i + 1)
            if (i == s)
                z = x[i];
    end
endmodule
