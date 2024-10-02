`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/21/2024 10:10:20 PM
// Design Name: 
// Module Name: Mux2x1_tb
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


module Mux2x1_tb(
    );
    reg x0, x1, sel;
    wire z;
    
    Mux2x1(.x0(x0), .x1(x1), .sel(sel), .z(z));
    
    initial
    begin
        #40 $finish;
    end
    
    initial
    begin
        x0 = 1'b0;
        x1 = 1'b0;
        sel = 1'b0;
        #5
        
        x0 = 1'b1;
        x1 = 1'b0;
        sel = 1'b0;
        #5
        
        x0 = 1'b0;
        x1 = 1'b1;
        sel = 1'b0;
        #5
        
        x0 = 1'b0;
        x1 = 1'b1;
        sel = 1'b0;
        #5
        
        x0 = 1'b0;
        x1 = 1'b1;
        sel = 1'b1;
        #5
        
        x0 = 1'b1;
        x1 = 1'b1;
        sel = 1'b1;
        #5;
    end
endmodule
