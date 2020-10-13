`timescale 1ns/1ns

module ex01_test;

  reg in3, in4;
  wire out2;

  ex01 computer(.in1(in3), .in2(in4), .out1(out2));
  // ex01 module with ex01_test I/O

  initial begin
    #10 in3 = 0; in4 = 0; //after 10ns
    #10 in3 = 0; in4 = 1; //after 20ns
    #10 in3 = 1; in4 = 0; //after 30ns
    #10 in3 = 1; in4 = 1; //after 40ns
    #10 $stop;
  end
endmodule
