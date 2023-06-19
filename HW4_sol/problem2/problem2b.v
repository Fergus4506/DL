module JK_flip_flop (Q, Q_not, J, K, Clk, reset);
  output 	Q, Q_not;
  input	J, K, Clk, reset;
  reg 	Q;
  assign	Q_not = ~Q;
  always @ (negedge Clk, negedge reset)	
    if(~reset)
		Q <= 1'b0;
	else
		case ({J, K})
			2'b00:	Q <= Q;
			2'b01:	Q <= 1'b0;
			2'b10:	Q <= 1'b1;
			2'b11:	Q <= ~Q;
		endcase
 endmodule
 
module BCD_ripple_adder(
	input count, reset,
	output Q1, Q2, Q4, Q8
	);
	
	wire Q8_not_wire, Q1_wire, Q2_wire, Q4_wire, Q8_J_wire;
	assign Q1 = Q1_wire;
	assign Q2 = Q2_wire;
	assign Q4 = Q4_wire;
	assign Q8 = Q8_wire;
	JK_flip_flop JK_Q1(
		.Q(Q1_wire), 
		.Q_not(),
		.J(1'b1), 
		.K(1'b1),
		.Clk(count), 
		.reset(reset)
		);
	JK_flip_flop JK_Q2(
		.Q(Q2_wire), 
		.Q_not(),
		.J(Q8_not_wire), 
		.K(1'b1),
		.Clk(Q1_wire), 
		.reset(reset)
		);
	JK_flip_flop JK_Q4(
		.Q(Q4_wire), 
		.Q_not(),
		.J(1'b1), 
		.K(1'b1),
		.Clk(Q2_wire), 
		.reset(reset)
		);
	JK_flip_flop JK_Q8(
		.Q(Q8_wire), 
		.Q_not(Q8_not_wire),
		.J(Q8_J_wire), 
		.K(1'b1),
		.Clk(Q1_wire), 
		.reset(reset)
		);
		
	and M1(Q8_J_wire, Q2_wire, Q4_wire);

endmodule

 
 

