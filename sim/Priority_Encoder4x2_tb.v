`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/12/2024 04:00:43 PM
// Design Name: 
// Module Name: Priority_Encoder4x2_tb
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


module Priority_Encoder4x2_tb(
    );
    reg [3:0]x;
    reg en;
    wire z;
    wire [1:0]y;
    integer i;
    
    Priority_Encoder4x2 uut(.x(x), .en(en), .z(z), .y(y));
    
    initial
    begin
        #170 $finish;
    end
    
     initial
     begin
        x = 0;
        en = 1;
        for(i = 0;i < 16; i = i + 1)
        begin
            #5 x = x + 1;
        end
        
        en = 0;
        for(i = 16;i < 32; i = i + 1)
        begin
            #5 x = x + 1;
        end
     end
endmodule
