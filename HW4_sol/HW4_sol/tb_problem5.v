module tb5;
wire y_out;
wire [1:0]state;
reg x_in,clk,rst;

p5 P5(y_out,state,x_in,clk,rst);

initial #200 $finish;
initial begin clk=1; forever #5 clk=~clk;end;
initial fork
        rst = 0;
  #10    rst = 1;
  #10   x_in = 0;
  #20   x_in = 1;
  #30   x_in = 1;
  #40   x_in = 1;
  #50   x_in = 1;
  #60   rst = 0;
  join
endmodule