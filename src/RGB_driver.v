`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/26/2024 02:08:24 PM
// Design Name: 
// Module Name: RGB_driver
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


module RGB_driver #(parameter R = 8)(
    input clk, reset_n, enable,
    input [R:0] red_duty, green_duty, blue_duty,
    output red_LED, green_LED, blue_LED
    );
    
    localparam TIMER_BITS = 8;
    localparam FINAL_VALUE = 195;
    
    //RED
    Enhanced_PWM #(.R(R), .TIMER_BITS(TIMER_BITS))(.clk(clk), .reset_n(reset_n), .enable(enable), .duty(red_duty), .FINAL_VALUE(FINAL_VALUE), .pwm_out(red_LED));
    //GREEN
    Enhanced_PWM #(.R(R), .TIMER_BITS(TIMER_BITS))(.clk(clk), .reset_n(reset_n), .enable(enable), .duty(green_duty), .FINAL_VALUE(FINAL_VALUE), .pwm_out(green_LED));
    //BLUE
    Enhanced_PWM #(.R(R), .TIMER_BITS(TIMER_BITS))(.clk(clk), .reset_n(reset_n), .enable(enable), .duty(blue_duty), .FINAL_VALUE(FINAL_VALUE), .pwm_out(blue_LED));

endmodule
