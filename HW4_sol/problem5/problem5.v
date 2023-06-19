module D_flip_flop_AR (Q, Q_not, D, Clk, rst);
  output 	Q, Q_not;
  input	D, Clk, rst;
  reg 	Q;
  assign Q_not = ~Q;
  always @ (posedge Clk, negedge rst)	
    if (rst == 0) Q <= 1'b0;
    else Q <= D;	 
endmodule

module Johnson_counter(
	input clk, reset,
	output A, B, C, E
	);
	
	wire DA, DB, DC, DE;	
	D_flip_flop_AR MA(
		.Q(DB), 
		.Q_not(), 
		.D(DA), 
		.Clk(clk), 
		.rst(reset)
		);
	D_flip_flop_AR MB(
		.Q(DC), 
		.Q_not(), 
		.D(DB), 
		.Clk(clk), 
		.rst(reset)
		);
	D_flip_flop_AR MC(
		.Q(DE), 
		.Q_not(), 
		.D(DC), 
		.Clk(clk), 
		.rst(reset)
		);
	D_flip_flop_AR ME(
		.Q(E), 
		.Q_not(DA), 
		.D(DE), 
		.Clk(clk), 
		.rst(reset)
		);
	
	assign A = DB;
	assign B = DC;
	assign C = DE;
	
endmodule
	