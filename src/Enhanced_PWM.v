`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/26/2024 08:01:23 AM
// Design Name: 
// Module Name: Enhanced_PWM
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


module Enhanced_PWM #(parameter R = 8, TIMER_BITS = 15)(
    input clk, reset_n, enable,
    input [R:0] duty,
    input [TIMER_BITS - 1:0] FINAL_VALUE,
    output pwm_out
    );
    wire tick, z;
    wire [R - 1:0] Q;
    
    Timer_PWM #(.BITS(TIMER_BITS)) T(.clk(clk), .reset_n(reset_n), .enable(enable), .FINAL_VALUE(FINAL_VALUE), .done(tick));
    counter #(.N(R)) COUNT(.clk(clk), .reset_n(reset_n), .enable(tick), .Q(Q));
    comparator #(.N(R)) COM(.x({0, Q}), .y(duty), .z(z));
    D_FF FF(.D(z), .clk(clk), .reset_n(reset_n), .enable(tick), .Q(pwm_out));
    
endmodule
