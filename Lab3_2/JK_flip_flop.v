// Description of JK flip-flop
module JK_flip_flop_1 (Q, Q_not, J, K, Clk, RST_B);
  output 	Q, Q_not;
  input	J, K, Clk, RST_B;
  wire	JK;
  assign	JK = (J & ~Q) | (~K & Q);
  assign	Q_not = ~Q; 
  D_flip_flop_AR M0 (Q, JK, Clk, RST_B);
 endmodule

module JK_flip_flop_2 (Q, Q_not, J, K, Clk);
  output 	Q, Q_not;
  input	J, K, Clk;
  reg 	Q;
  assign	Q_not = ~Q;
  always @ (posedge Clk)	
    case ({J, K})
      2'b00:	Q <= Q;
      2'b01:	Q <= 1'b0;
      2'b10:	Q <= 1'b1;
      2'b11:	Q <= ~Q;
    endcase
 endmodule
