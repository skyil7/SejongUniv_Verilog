`timescale 1ns/1ns

module FullAdder_test;
    reg X, Y, Cin;
    wire S, C;

    FullAdder FA(.A(X), .B(Y), .S(S), .Cout(C), .Cin(Cin));

    initial begin
      #10 X=1'b0; Y=1'b0; Cin=1'b0;
      #10 X=1'b0; Y=1'b0; Cin=1'b1;
      #10 X=1'b0; Y=1'b1; Cin=1'b0;
      #10 X=1'b0; Y=1'b1; Cin=1'b1;
      #10 X=1'b1; Y=1'b0; Cin=1'b0;
      #10 X=1'b1; Y=1'b0; Cin=1'b1;
      #10 X=1'b1; Y=1'b1; Cin=1'b0;
      #10 X=1'b1; Y=1'b1; Cin=1'b1;
      #10 $stop;
    end
endmodule;