module L_FF_TEST;
	reg clk, D;
	wire out;
	
	L_FF lff (.D(D), .clk(clk), .Q(out));

	always
		#10 clk = ~clk;
		
	initial begin
		clk = 1'b0;
		#7 D = 1'b0;
		#17 D = 1'b1;
		#3 D = 1'b0;
		#5 D = 1'b1;
		#25 D = 1'b0;
		#21 D = 1'b1;
		#20 $stop;
	end
	
	
endmodule
