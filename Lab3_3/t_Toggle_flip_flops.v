module t_Toggle_flip_flops;
  wire  t_Q_1, t_Q_2, t_Q_3;
  reg	t_T, t_Clk, t_rst;


  Toggle_flip_flop_1 M1  (t_Q_1, t_T, t_Clk, t_rst);
  Toggle_flip_flop_2 M2  (t_Q_2, t_T, t_Clk, t_rst);
  Toggle_flip_flop_3 M3  (t_Q_3, t_T, t_Clk, t_rst);
  initial #150 $finish;
  initial begin t_Clk = 0; forever #5 t_Clk =  !t_Clk; end
  initial fork
    t_T = 1;
    t_rst = 0;
    #22 t_rst = 1;
     #42 t_rst = 0;
    #62 t_rst = 1;

    #90 t_T = 0;
    #120 t_T = 1;
     
  join
endmodule
