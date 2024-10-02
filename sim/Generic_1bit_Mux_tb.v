`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/11/2024 04:41:00 PM
// Design Name: 
// Module Name: Generic_1bit_Mux_tb
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


module Generic_1bit_Mux_tb(
    );
    parameter INs = 5;
    reg [INs-1:0]x;
    reg [$clog2(INs)-1:0]s;
    wire z;
    
    Generic_1bit_Mux #(.INs(INs)) uut(.x(x), .s(s), .z(z));
    
    initial
    begin
        #30 $finish;
    end
    
    initial
    begin
        x = 5'b10101;
     
        s = 3'b000;
        #5
        
        s = 3'b001;
        #5
        
        s = 3'b010;
        #5
        
        s = 3'b011;
        #5
                
        s = 3'b100;
        #5
                
        s = 3'b101;
        #5;
    end
endmodule
