module MUX_4(in1, in2, in3, in4, sel, out);
  input [3:0] in1, in2, in3, in4;
  input [1:0] sel;
  output [3:0] out;

  reg [3:0] out;
  
  always @(in1, in2, in3, in4, sel) begin
    case (sel)
	  2'b00: out = in1;
	  2'b01: out = in2;
	  2'b10: out = in3;
	  2'b11: out = in4;
	endcase
  end
endmodule