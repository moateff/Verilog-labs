`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/26/2024 08:13:25 AM
// Design Name: 
// Module Name: Timer_PWM
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


module Timer_PWM #(parameter BITS = 15)(
    input clk, reset_n, enable,
    input [BITS - 1:0] FINAL_VALUE,
    output done
    );
    reg [BITS - 1:0] Q_next, Q_reg;
    
    always @(negedge clk or negedge reset_n)
    begin
        if(~reset_n)
            Q_reg <= 'b0;
        else if(enable)
            Q_reg <= Q_next;
        else
            Q_reg <= Q_reg;
    end
    
    assign done = (Q_reg == FINAL_VALUE);
    
    always @(*)
        Q_next = done? 'b0: Q_reg + 1;

endmodule

