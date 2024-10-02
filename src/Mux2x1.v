`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/07/2024 10:52:34 PM
// Design Name: 
// Module Name: Mux2x1
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


module Mux2x1(
    input x0, x1, sel,
    output reg z
    );
    /*Structural Representation*/
    //Gate-level Modeling
    /*wire nsel, g0, g1;
    not(nsel, sel);
    and(g0, x0, nsel);
    and(g1, x1, sel);
    or(z, g0, g1);
    
    //Dataflow Modeling
    assign z = ~sel & x0 | sel & x1;
    
    /*Behavioral Representation*/
    always@(*)
    begin
        if(sel == 1'b0)
        begin
            z = x0;
        end
        else if(sel == 1'b1)
        begin
            z = x1;
        end
    end
endmodule
