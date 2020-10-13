`timescale 1ns/1ns

module MUX_2_test;
  reg in1, in2, sel;
  wire out;
  
  MUX_2 mux (.in1(in1), .in2(in2), .sel(sel), .out(out));

  initial begin
    in1=1'b0; in2=1'b1;
	#10 sel=1'b0;
	#10 sel=1'b1;
	#10 $stop;
  end
endmodule
