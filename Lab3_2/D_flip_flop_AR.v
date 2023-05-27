// Description of D flip-flop
// with active-low asynchronous reset 

module D_flip_flop_AR (Q, D, Clk, rst);
  output 	Q;
  input	D, Clk, rst;
  reg 	Q;

  always @ (posedge Clk, negedge rst)	
    if (rst == 0) Q <= 1'b0;
    else Q <= D;	 
endmodule