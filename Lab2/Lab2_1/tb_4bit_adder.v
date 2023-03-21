module tb_4bit_adder;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg C0;
	// Outputs
	wire [3:0] S;
	wire C4;
	// Instantiate the Unit Under Test (UUT)
	ripple_carry_4_bit_adder uut (
		.S(S), 
		.C4(C4), 
		.A(A), 
		.B(B), 
		.C0(C0)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		C0 = 0;
		// Add stimulus here
		#10 C0 = 0;
		#10 A = 4'ha; 
		#10 B = 4'h5;
		#20 A = 0; 
		#20 B = 0;
		#30 A = 4'h5; 
		#30 B = 4'ha;
		#40 C0 = 1;
		#50 A = 4'ha; 
		#50 B = 4'h5;
		#60 A = 0; 
		#60 B = 0;
		#70 A = 4'h5; 
		#70 B = 4'ha;

	end
      
endmodule