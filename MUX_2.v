module MUX_2(in1, in2, sel, out);
  input in1, in2, sel;
  output out;
  
  reg out;
  
  always @(sel) begin
    case(sel)
      1'b0 : out = in1;
	  1'b1 : out = in2;
	endcase
  end
endmodule;
