`timescale 1ns/1ns

module MUX_4_test;
	reg [3:0] in1, in2, in3, in4;
	reg [1:0] sel;
	wire [3:0] out;

    MUX_4 mux4 (.in1(in1), .in2(in2), .in3(in3), .in4(in4), .sel(sel), .out(out));

	initial begin
    	in1 = 4'b0011; in2 = 4'b1111; in3 = 4'b1111; in4 = 4'b1100;
		sel = 2'b00;
		#10 sel = 2'b01;
		#10 sel = 2'b10;
		#10 sel = 2'b11;
		#10 $stop;
	end
	
endmodule
