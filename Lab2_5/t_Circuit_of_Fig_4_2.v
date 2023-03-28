module t_Circuit_of_Fig_4_2;
  reg 	[2: 0] D;
  wire	F1, F2;
  parameter stop_time = 100;
  
  Circuit_of_Fig_4_2 M1 (F1, F2, D[2], D[1], D[0]);

  initial # stop_time $finish;
  initial begin				// Stimulus generator
    	D = 3'b000;
    repeat (7)
      #10 D = D + 1'b1;
  end

  initial begin
    $display ("A      B     C     F1   F2");
    $monitor ("%b      %b     %b     %b    %b", D[2], D[1], D[0], F1, F2);
  end
endmodule
