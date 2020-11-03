module BLK(in, out1, out2, clk);
	input [3:0] in;
	input clk;
	output [3:0] out1, out2;
	reg [3:0] out1, out2;
	
	initial begin
		out1 = 7;
	end
	
	always @(posedge clk) begin
		out1 = in;
		out2 = out1;
	end
endmodule;

module NBLK(in, out1, out2, clk);
	input [3:0] in;
	input clk;
	output [3:0] out1, out2;
	reg [3:0] out1, out2;
	
	initial begin
		out1 = 7;
	end
	
	always @(posedge clk) begin
		out1 <= in;
		out2 <= out1;
	end
endmodule;