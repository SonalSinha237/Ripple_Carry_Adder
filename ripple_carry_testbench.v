`timescale 1ns / 1ps
                                           
module ripple_carry_testbench();
    
    reg [3:0] a,b;
    reg cin;
    wire [3:0] sum;
    wire carry;
    
    Ripple_Carry_Adder uut(a,b,cin,sum,carry);
    
    initial
    begin
    a=4'b1010; b=4'b0101; cin=1'b0; #100;
    a=4'b1010; b=4'b0101; cin=1'b1; #100;
    a=4'b1101; b=4'b0100; cin=1'b0; #100;
    a=4'b1101; b=4'b0100; cin=1'b1; #100;
    end
    
endmodule
