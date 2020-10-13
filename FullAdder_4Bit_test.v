`timescale 1ns/1ns

module FullAdder_4Bit_test;
  reg [3:0] A, B;
  reg Cin;

  wire [3:0] Sum;
  wire Cout;

  FullAdder_4Bit FA_4BIT(.A(A),
                        .B(B),
                        .Cin(Cin),
                        .Sum(Sum),
                        .Cout(Cout));
  initial begin
    #10 A=4'h0; B=4'h1; Cin=0;
    #10 A=4'h3; B=4'h1; Cin=0;
    #10 A=4'h8; B=4'h7; Cin=0;
    #10 A=4'he; B=4'h9; Cin=0;
    #10 $stop;
  end
endmodule
