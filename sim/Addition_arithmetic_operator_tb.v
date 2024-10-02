`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/09/2024 10:21:29 PM
// Design Name: 
// Module Name: Addition_Arithmetic_operator_tb
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


module Addition_arithmetic_operator_tb(
    );
    parameter N = 4;
    reg [N-1:0]x, y; 
    wire [N-1:0]s; 
    wire cout, overflow;
    
    Addition_arithmetic_operator#(.N(N))uut(.x(x), .y(y), .s(s), .cout(cout), .overflow(overflow));
    
    initial
    begin
        #40 $finish;
    end
    
    initial
    begin
        x = 4'd6;
        y = 4'd3;
        #10
        
        x = -4'd6;
        y = 4'd3;
        #10
        
        x = 4'd6;
        y = -4'd3;
        #10
        
        x = -4'd6;
        y = -4'd3;
        #10;
    end
endmodule
