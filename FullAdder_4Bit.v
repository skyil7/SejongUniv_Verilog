module FullAdder_4Bit(A, B, Cin, Sum, Cout);
  input [3:0] A;
  input [3:0] B;
  input Cin;

  output [3:0] Sum;
  output Cout;

  wire [3:0] A;
  wire [3:0] B;
  wire Cin;

  wire [3:0] Sum;
  wire Cout;

  wire [2:0] FA_Cin;

  FullAdder FA01(.A(A[0]), .B(B[0]), .Cin(Cin), .S(Sum[0]), .Cout(FA_Cin[0]));
  FullAdder FA02(.A(A[1]), .B(B[1]), .Cin(FA_Cin[0]), .S(Sum[1]), .Cout(FA_Cin[1]));
  FullAdder FA03(.A(A[2]), .B(B[2]), .Cin(FA_Cin[1]), .S(Sum[2]), .Cout(FA_Cin[2]));
  FullAdder FA04(.A(A[3]), .B(B[3]), .Cin(FA_Cin[2]), .S(Sum[3]), .Cout(Cout));

endmodule
