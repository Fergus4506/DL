module Toggle_flip_flop_3 (Q, T, Clk, rst);
  output 	Q;
  input	T, Clk, rst;
  reg 	Q;

  always @ (posedge Clk, negedge rst)	
    if (!rst) Q <= 1'b0;
    else  Q <= Q ^ T;	 
endmodule
module Moore_Model_STR_Fig_5_20 (
  output	y_out, A, B, 
  input	x_in, clock, reset
);
  wire	TA, TB;

// Flip-flop input equations
  assign TA = x_in & B;
  assign TB = x_in;
//output equation
  assign y_out = A & B;
// Instantiate Toggle flip-flops
  Toggle_flip_flop_3 M_A (A, TA, clock, reset);
  Toggle_flip_flop_3 M_B (B, TB, clock, reset);

endmodule 
