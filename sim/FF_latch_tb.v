`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/15/2024 03:56:04 PM
// Design Name: 
// Module Name: D_latch_tb
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


module FF_latch_tb(
    );
    reg D;
    reg clk;
    reg reset_n;
    wire Q;
    integer i;
    
    D_FF uut(.D(D), .clk(clk), .reset_n(reset_n), .Q(Q));
    
    localparam T = 20;
    
    always
    begin
        clk = 1'b0;
        #(T/2);
        clk = 1'b1;
        #(T/2);
    end
    
    initial
    begin
        reset_n = 1'b0;
        #(T/2);
            
        reset_n = 1'b1;
  
        for(i = 0; i < 1; i = i + 1)
        begin
            D = 1'b1;
            #(T/2)
            D = 1'b0;
            #(T/2);
        end
        
        for(i = 0; i < 1; i = i + 1)
        begin
            D = 1'b0;
            #(T/2)
            D = 1'b1;
            #(T/2);
        end
                        
        @(posedge clk);
        D = 1'b1;
        
        #3 D = 1'b0;
        #4 D = 1'b1;
        #4 D = 1'b0;
        
        repeat(2) @(posedge clk);
        D = 1'b1;
        
        #20 $stop;
    end
endmodule
