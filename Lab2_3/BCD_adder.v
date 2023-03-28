module BCD_adder(
    input [3:0] A,
    input [3:0] B,
    input C0,
    output [3:0] S,
    output C_out
    );
	wire [3:0] Z;
	wire K, X, Y;
	ripple_carry_4_bit_adder Adder1(
			.S(Z),
			.C4(K),
			.A(A), 
			.B(B), 
			.C0(C0)
			);	
	
	and G1(X,Z[3],Z[2]);
	and G2(Y,Z[3],Z[1]);	 
	or  G3( C_out,X,Y,K);
	
	ripple_carry_4_bit_adder Adder2(
			.S(S),
			.C4( ),
			.A({1'b0,C_out,C_out,1'b0}), 
			.B(Z), 
			.C0(0)
			);
	
			
endmodule
