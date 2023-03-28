module tb_BCD_Adder;
reg [3:0] A;
reg [3:0] B;
reg C0;
wire [3:0] S;
wire C_out;

BCD_adder uut(A, B, C0, S, C_out);
initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		C0 = 0;
		
		#20 A = 4'b1000;
		        B = 4'b0001;
		#20 A = 4'b0010;
		        B = 4'b0011;
		#20 A = 4'b1001;
		        B = 4'b0001;
		#20 A = 4'b0100;
		        B = 4'b0100;
		#20 A = 4'b0101;
		        B = 4'b0101;	 
	end
	initial #150 $finish;
endmodule
