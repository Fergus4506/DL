module tb_decoder_2x4_gates;

	// Inputs
	reg A;
	reg B;
	reg enable;

	// Outputs
	wire [0:3] D;

	// Instantiate the Unit Under Test (UUT)
	decoder_2x4_gates uut (
		.D(D), 
		.A(A), 
		.B(B), 
		.enable(enable)
	);

	initial begin
		// Initialize Inputs
		#30 enable = 1;
      		#10 A = 0; B = 0;
		#10 A = 0; B = 1;
		#10 A = 1; B = 0;
		#10 A = 1; B = 1;
		        
		#30 enable = 0;
      		#10 A = 0; B = 0;
		#10 A = 0; B = 1;
		#10 A = 1; B = 0;
	end
initial #150 $finish;  
      
endmodule
