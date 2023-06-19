module tb_Johnson_counter;
	reg clk, reset;
	wire A, B, C, E;
	
	Johnson_counter M1(clk, reset, A, B, C, E);
	initial #150 $finish;
	initial begin clk = 0; forever #5 clk = !clk; end
	initial begin
	   reset = 0;
	   #5 reset = 1;
	end
endmodule