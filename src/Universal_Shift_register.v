`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/18/2024 12:20:55 AM
// Design Name: 
// Module Name: Universal_Shift_register
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


module Universal_Shift_register #(parameter N = 4)(
    input [N-1:0] I,
    output [N-1:0] O,
    input clk,
    input MSB_in, LSB_in,
    input [1:0] s,
    input reset_n
    );
    reg [N-1:0] Q_next, Q_reg;
        
    always@(negedge clk or negedge reset_n)
    begin
        if(!reset_n)
            Q_reg <= 'b0;
        else
            Q_reg <= Q_next;
    end
    
    always@(I, Q_reg, MSB_in, LSB_in, s)
    begin
        Q_next = Q_reg;
        case(s)
            2'b00: Q_next = Q_reg; //no change
            2'b01: Q_next = {MSB_in, Q_reg[N-1:1]}; //Shift Right
            2'b10: Q_next = {Q_reg[N-2:0], LSB_in}; //Shift left
            2'b11: Q_next = I; //Parallel Load
            default: Q_next = Q_reg;
        endcase
    end
    
    assign Q = Q_reg;
    
endmodule
