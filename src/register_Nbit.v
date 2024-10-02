`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/15/2024 06:41:05 PM
// Design Name: 
// Module Name: register_Nbit
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


module register_Nbit #(parameter N = 4)(
    input clk,
    input [N-1:0] I,
    input load,
    output [N-1:0] O
    );
    /*
    genvar i;
    generate
        for(i = 0; i < N; i = i + 1)
        begin: FF
            D_FF (.D(I[i]), .clk(clk), .Q(O[i]), .reset_n(), .clear_n(), .set_n());
        end
    endgenerate
    */
    
    reg [N-1:0] Q_next, Q_reg;
    
    always@(negedge clk)
    begin
        Q_reg <= Q_next;
    end
    
    always@(I)
    begin
        if(load)
            Q_next = I;
        else
            Q_next = Q_reg;
    end
    
    assign O = Q_reg;
endmodule
