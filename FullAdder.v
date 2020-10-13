module FullAdder(A, B, S, Cout, Cin);
  input A, B, Cin;
  output S, Cout;

  wire A, B, Cin;
  wire S, Cout;

  wire HA01_S, HA01_C;
  wire HA02_C;

  HalfAdder HA01 (.A(A), .B(B), .S(HA01_S), .C(HA01_C));
  HalfAdder HA02 (.A(HA01_S), .B(Cin), .S(S), .C(HA02_C));

  assign Cout = HA01_C | HA02_C; // or
endmodule;