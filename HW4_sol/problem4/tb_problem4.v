 module tb_shift_4_reg;
	reg clk, SI, rst;
	wire SO;
	
	shift_4_reg M1(clk, SI, rst, SO);
	initial #150 $finish;
	initial begin clk = 0; forever #5 clk = !clk; end
	initial begin
	   reset = 0;
	   SI = 0;
	   #5 rst = 1;
	   repeat(10)
		#20 SI = ~SI;
	end
endmodule