`timescale 1ns/1ns

module BLK_NBLK_TEST;
	reg clk;
	reg [3:0] BLK_in1, NBLK_in1;
	wire [3:0] BLK_out1, BLK_out2, NBLK_out1, NBLK_out2;
	BLK blk (.in(BLK_in1), .out1(BLK_out1), .out2(BLK_out2), .clk(clk));
	NBLK nblk (.in(NBLK_in1), .out1(NBLK_out1), .out2(NBLK_out2), .clk(clk));
	
	always begin
		#10 clk <= ~clk;
	end
	
	initial begin
		clk = 1'b0;
		#20 BLK_in1 = 1; NBLK_in1 = 1;
		#20 BLK_in1 = 2; NBLK_in1 = 2;
		#20 BLK_in1 = 3; NBLK_in1 = 3;
		#20 BLK_in1 = 4; NBLK_in1 = 4;
		#20 BLK_in1 = 0; NBLK_in1 = 0;
		#20 $stop;
	end
	
endmodule