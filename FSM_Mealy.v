module FSM_Mealy(d_in, clk, d_out, n_reset);
	input d_in, clk, n_reset;
	output d_out;
	
	reg d_out;
	reg[1:0] state;
	
	parameter [1:0] A = 2'h0, B = 2'h1, C = 2'h2;
	
	always @ (posedge clk or posedge n_reset) begin
		if (n_reset == 1'b1)
			state = A;
		case (state)
			A: begin
				if (d_in == 1'b1) begin
					state = B;
					d_out = 0;
				end
				else begin // initializer
					state = A;
					d_out = 0;
				end
			end
			B: begin
				if (d_in == 1'b1) begin
					state = C;
					d_out = 0;
				end
				else begin
					state = A;
					d_out = 0;
				end
			end
			C: begin
				if (d_in == 1'b1) begin
					state = C;
					d_out = 1;
				end
				else begin
					state = A;
					d_out = 0;
				end
			end
		endcase
	end
endmodule