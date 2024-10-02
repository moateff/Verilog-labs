`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/15/2024 05:55:32 PM
// Design Name: 
// Module Name: coding_guidelines
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


module coding_guidelines(
    input a, b, c,
    input clk,
    output f,g
    );
    reg f_next, f_reg, g_next, g_reg;
    
    always@(posedge clk)
    begin
        f_reg <= f_next;
        g_reg <= g_next;
    end
    
    always@(a, b, c, g_next)
    begin
        f_next = a & ~g_reg;
        g_next = b | c;
    end
    
    assign f = f_reg;
    assign g = g_reg;
    
    /*
    reg ag, bc;
    always@(posedge clk)
    begin
        ag = a & ~g;
        f <= ag;
        
        bc = b | c;
        g <= bc;
    end
    */
endmodule
