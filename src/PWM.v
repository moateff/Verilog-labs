`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/24/2024 05:58:25 PM
// Design Name: 
// Module Name: PWM
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


module PWM #(parameter R = 8)(
    input clk, reset_n, enable,
    input [R-1:0] duty,
    output pwm_out
    );
    
    reg [R - 1:0] Q_next, Q_reg;
    
    always @(negedge clk or negedge reset_n)
    begin
        if(~reset_n)
            Q_reg <= 'b0;
        else if(enable)
            Q_reg <= Q_next;
        else
            Q_reg <= Q_reg;
    end 
    
    always @(Q_reg)
    begin
        Q_next = Q_reg + 1;
    end
    
    assign pwm_out = Q_reg < duty;
endmodule
