`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/24/2024 03:03:53 PM
// Design Name: 
// Module Name: Timer
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


module Timer #(parameter FINAL_VALUE = 255)(
    input clk, reset_n, enable,
    output done
    );
    
    localparam BITS = $clog2(FINAL_VALUE);
    
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
    
    assign done = Q_reg == FINAL_VALUE;
    
    always @(done or Q_reg)
    begin
        Q_next = done? 'b0: Q_reg + 1;
    end
endmodule
