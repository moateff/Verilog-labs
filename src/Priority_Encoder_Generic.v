`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/12/2024 04:13:33 PM
// Design Name: 
// Module Name: Priority_Encoder_Generic
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


module Priority_Encoder_Generic #(parameter N = 4)(
    input [N-1:0]x,
    input en,
    output z,
    output reg [$clog2(N)-1:0]y
    );
    assign z = |x;
    integer i;
    always @(*)
    begin
        y = 2'bx;
        if(en)
        begin
            for(i = 0; i < N; i = i + 1)
            begin
                if(x[i]) y = i;
            end
        end
     end
endmodule
