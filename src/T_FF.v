`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/17/2024 03:08:12 PM
// Design Name: 
// Module Name: T_FF
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


module T_FF(
    input T,
    input clk,
    input reset_n,
    output Q
    );
    /*
    always@(negedge clk or negedge reset_n)
    begin
        if(!reset_n)
            Q <= 1'b0;
        else
            Q <= (T? ~Q: Q);
    end
    */
    
    localparam C2Q_DELAY = 2;
    
    reg Q_reg;
    wire Q_next;
    
    always @(negedge clk or negedge reset_n)
    begin
        if(!reset_n)
            Q_reg <= 1'b0;
        else
            #C2Q_DELAY Q_reg <= Q_next;
    end
    
    assign Q_next = T? ~Q_reg: Q_reg;
    
    assign Q = Q_reg;
endmodule
