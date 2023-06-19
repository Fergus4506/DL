module tb_BCD_ripple_adder;
	reg count, reset;
	wire Q1, Q2, Q4, Q8;
	
	BCD_ripple_adder M1(count, reset, Q1, Q2, Q4, Q8);
	initial #150 $finish;
	initial begin count = 0; forever #5 count = !count; end
	initial begin
	   reset = 0;
	   #5 reset = 1;
	end
endmodule