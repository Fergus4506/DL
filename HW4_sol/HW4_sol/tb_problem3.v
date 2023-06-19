module tb3;
wire y_out;
wire [2:0]state;
reg x_in,clk,rst;

p3 P3(y_out,state,x_in,clk,rst);

initial #200$finish;
initial begin clk=1; forever #5 clk=~clk;end;
initial fork
        rst = 0;
  #1    rst = 1;
  #10    x_in = 0;
  #20    x_in = 1;
  #30    x_in = 0;
  #40    x_in = 1;
  #50    x_in = 0;
  #60    x_in = 0;
  #70    x_in = 1;
  #80    x_in = 0;
  #90    x_in = 1;
  #100   x_in = 1;
  #110   x_in = 1;
  join
endmodule