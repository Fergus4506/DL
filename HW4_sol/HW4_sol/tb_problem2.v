module tb2;
wire y_out;
wire [2:0]state;
reg x_in,clk,rst;

p2 P2(y_out,state,x_in,clk,rst);

initial #200 $finish;
initial begin clk=1; forever #5 clk=~clk;end;
initial fork
        rst = 0;
  #1    rst = 1;
  #10   x_in = 0;
  #20   x_in = 1;
  #30   x_in = 0;
  #50   x_in = 1;
  #60   x_in = 0;
  #70   rst = 0;
  #80   rst = 1;
  #90   x_in = 1;
  #100  x_in = 0;
  #110  x_in = 1;
  #120  x_in = 1;
  #130  x_in = 1;
  #140  x_in = 1;
  #150  x_in = 1;
  join
endmodule