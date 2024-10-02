`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/26/2024 09:17:09 AM
// Design Name: 
// Module Name: Enhanced_PWM_tb
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


module Enhanced_PWM_tb(
    );
    parameter R = 5;
    parameter TIMER_BITS = 8;
    reg clk, reset_n, enable;
    reg [R:0] duty;
    reg [TIMER_BITS - 1:0] FINAL_VALUE;
    wire pwm_out;
    
    Enhanced_PWM #(.R(R), .TIMER_BITS(TIMER_BITS)) uut(.clk(clk), .reset_n(reset_n), .enable(enable), .FINAL_VALUE(FINAL_VALUE), .duty(duty), .pwm_out(pwm_out));
    
    localparam T = 25;
    always
    begin
        clk = 1'b0;
        #(T / 2);
        clk = 1'b1;
        #(T / 2);
    end
    
    initial
    begin
        reset_n = 1'b0;
        enable = 1'b0;
        #(T);
        reset_n = 1'b1;
        #(T/2);
        enable = 1'b1;
        duty = 16;
        FINAL_VALUE = 255;
    end
endmodule
