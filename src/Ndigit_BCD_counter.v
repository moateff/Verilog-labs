`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/24/2024 01:25:46 PM
// Design Name: 
// Module Name: Ndigit_BCD_counter
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


module Ndigit_BCD_counter #(parameter N = 3)(
    input clk,
    input reset_n, enable,
    output done
    );
    wire [3:0] Q [N-1:0];
    
    wire [N-1:0] d;
    wire [N:0] a;
    
    assign a[0] = enable;
    
    generate
        genvar i;
        for(i = 0; i < N; i = i+1)
            begin
                BCD_counter BCD(.clk(clk), .reset_n(reset_n), .enable(a[i]), .done(d[i]), .Q(Q[i]));
                assign a[i+1] = a[i] & d[i];
            end
    endgenerate
    
    assign done = a[N-1] & d[N-1];
endmodule
