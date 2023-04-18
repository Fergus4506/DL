module t_D_flip_flops;
  wire 	Q, Q_AR;
  reg	D, Clk, rst;


  D_flip_flop M0 (Q, D, Clk);
  D_flip_flop_AR M1 (Q_AR, D, Clk, rst);

  initial #300 $finish;
  always #5 Clk = ~Clk;
  initial begin
    D = 1;
    rst = 1;
    Clk = 0;
    #20 D = 0;
    #30 D = 1;
    #12 rst = 0;
    #30 D = 0;
    #30 D = 1;
    #12 rst = 1;
    #30 D = 0;
    #30 D = 1;
  end
endmodule
