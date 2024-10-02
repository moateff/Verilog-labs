/*
ALU module, which takes two operands of size 32-bits each and a 4-bit ALU_control as input.
Operation is performed on the basis of ALU_control value and output is 32-bit ALU_result. 
If the ALU_result is zero, a ZERO FLAG is set.
*/

/*
ALU Control lines | Function
-----------------------------
        0000    Bitwise-AND
        0001    Bitwise-OR
        0010	Add (A+B)
        0100	Subtract (A-B)
        1000	Set on less than
        0011    Shift left logical
        0101    Shift right logical
        0110    Multiply
        0111    Bitwise-XOR
*/

`ifndef ALU_V
`define ALU_V

module ALU (
    input [31:0] a_in, b_in, 
    input[3:0] alu_control,
    input clk, reset,
    output reg [31:0] alu_result,
    output reg zero_flag
);  
    always @(posedge clk or posedge reset)
    begin
        alu_result = 32'b0;
        zero_flag = 1'b0;
        
        if (reset) 
        begin
            alu_result = 32'b0;
            zero_flag = 1'b1;
        end 
        else 
        begin	  
           // Operating based on control input
           case(alu_control)
           4'b0000: alu_result = a_in&b_in;
           4'b0001: alu_result = a_in|b_in;
           4'b0010: alu_result = a_in+b_in;
           4'b0100: alu_result = a_in-b_in;
           4'b1000: 
           begin 
               if(a_in<b_in)
                   alu_result = 1;
               else
                   alu_result = 0;
           end
           4'b0011: alu_result = a_in<<b_in;
           4'b0101: alu_result = a_in>>b_in;
           4'b0110: alu_result = a_in*b_in;
           4'b0111: alu_result = a_in^b_in;
           default: alu_result = 32'b0;
           endcase 
           
           // Setting Zero_flag if ALU_result is zero
           if (alu_result == 32'b0)
               zero_flag = 1'b1;
           else
               zero_flag = 1'b0;  
        end
    end
endmodule
`endif
