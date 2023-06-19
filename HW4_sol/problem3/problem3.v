module D_flip_flop_AR (Q, Q_not, D, Clk, rst);
  output 	Q, Q_not;
  input	D, Clk, rst;
  reg 	Q;
  assign Q_not = ~Q;
  always @ (posedge Clk, negedge rst)	
    if (rst == 0) Q <= 1'b0;
    else Q <= D;	 
endmodule

module problem5_counter(
	input clk, reset,
	output A, B, C
	);
	
	wire A_wire, A_not_wire, B_wire, B_not_wire, C_wire, C_not_wire;
	wire DA, DB, DC;

	
	D_flip_flop_AR MA(A_wire, A_not_wire, DA, clk, reset);
	D_flip_flop_AR MB(B_wire, B_not_wire, DB, clk, reset);
	D_flip_flop_AR MC(C_wire, C_not_wire, DC, clk, reset);
	
	assign DA =  A_wire ^ B_wire;
	assign DB = (A_wire & B_not_wire) | C_wire;
	assign DC = A_not_wire & B_not_wire & C_not_wire;
	
	assign A = A_wire;
	assign B = B_wire;
	assign C = C_wire;
	
endmodule