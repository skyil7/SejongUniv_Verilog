`timescale 1ns/1ns

module HalfAdder_test;
    reg X, Y;
    wire S, C;

    HalfAdder HA(.A(X), .B(Y), .S(S), .C(C));

    initial begin
      #10 X=1'b0; Y=1'b0;
      #10 X=1'b0; Y=1'b1;
      #10 X=1'b1; Y=1'b0;
      #10 X=1'b1; Y=1'b1;
      #10 $stop;
    end
endmodule;