`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/15/2024 03:49:21 PM
// Design Name: 
// Module Name: D_FF
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


module D_FF(
    input clk, reset_n, enable,
    input D,
    output Q
    );
    reg Q_next, Q_reg;
    
    always@(negedge clk or negedge reset_n)
    begin
        if(!reset_n)
            Q_reg <= 1'b0;
        else if(enable)
            Q_reg <= Q_next;
        else
            Q_reg <= Q_reg;
    end
    
    always@(D)
        Q_next = D;
    
    assign Q = Q_reg;
    /*
    always@(D or clear_n or set_n)
    begin
        if(!clear_n)
            Q_next = 1'b0;
        else if(!set_n)
            Q_next = 1'b1;
        else
            Q_next = D;
    end
    
    assign Q = Q_reg;
    */
    //T_FF FF(.T(D ^ Q), .clk(clk), .reset_n(reset_n), .Q(Q));
endmodule
