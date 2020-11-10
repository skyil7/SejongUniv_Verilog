
`timescale 1ns/1ns

module FSM_Mealy_TEST;
	reg clk, reset, in;
	wire out;

	FSM_Mealy fsm(.d_in(in), .clk(clk), .d_out(out), .n_reset(reset));

	always 
		#10 clk = ~clk;	

	initial begin
		clk = 1'b1; reset = 1'b1;
		#15 reset = 1'b0; 
		#20 in = 1'b1;
		#20 in = 1'b1;
		#20 in = 1'b1;
		#20 in = 1'b1;
		#20 in = 1'b1;
		
		#20 in = 1'b1;
		#20 in = 1'b0;
		#20 in = 1'b1;
		#20 in = 1'b1;
		#20 in = 1'b0;
		
		#20 in = 1'b1;
		#20 in = 1'b1;
		#20 in = 1'b1;
		#20 in = 1'b0;
		#20 in = 1'b1;
		
		#20 $stop;
	end
	
endmodule