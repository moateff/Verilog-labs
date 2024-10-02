`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/24/2024 06:04:53 PM
// Design Name: 
// Module Name: PWM_tb
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


module PWM_tb(
    );
    parameter R = 8;
    reg clk, reset_n, enable;
    reg [R:0] duty;
    wire pwm_out;
    
    PWM #(.R(R)) uut(.clk(clk), .reset_n(reset_n), .enable(enable), .duty(duty), .pwm_out(pwm_out));
    
    localparam T = 2.5;
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
        #(T / 2);
        reset_n = 1'b1;
        #(T / 2);
        enable = 1'b1;
        duty = 128;
    end
endmodule
