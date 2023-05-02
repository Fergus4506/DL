module t_JK_flip_flop;
  wire 	Q, Q_not;
  reg	J, K, Clk, RST_B;

  JK_flip_flop_1  M1 (Q_1, Q_1_not, J, K, Clk, RST_B);
  JK_flip_flop_2  M2 (Q_2, Q_2_not, J, K, Clk);

 
  initial #100 $finish;
  initial begin Clk = 0; forever #5 Clk = ~Clk; end
  initial fork
    RST_B = 0;
    RST_B = 1;
    J = 0;
    K = 0;
    #20 K = 1;
    #40 J = 1;
    #80 K = 0;
    #90 J = 0;
   join
endmodule
