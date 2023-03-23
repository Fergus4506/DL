module tb_BCD2Excess6;

	reg[3:0]A;
	
	wire[3:0]W;
	
	BCD2Excess6 uut(
		.W(W[3]),
		.X(W[2]),
		.Y(W[1]),
		.Z(W[0]),
		.A(A[3]),
		.B(A[2]),
		.C(A[1]),
		.D(A[0])
	);
	
	initial begin
		A=0;
		#20 A=4'ha;
		#20 A=4'h2;
		#20 A=4'h3;
		#20 A=4'h4;
	end
initial#100 $finish;
endmodule
		