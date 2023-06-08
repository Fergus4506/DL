module tb_problem1;
    reg [3:0]A,B;
    reg in_B;
    reg reset,clk,control;
    problem1 uut(A,B,in_B,control,reset,clk);
    initial #200 $finish;
    always #5 clk=~clk;
    initial fork
        #0 reset=0;
        #0 control=0;
        #0 clk=0;
        #0 in_B=1;
        #0 A=4'b0101;
        #0 B=4'b0111;
        #15 reset=1;
        #30 control=1;
        #30 in_B=1;
        #40 in_B=0;
        #50 in_B=1;
        #60 in_B=0;
        #100 in_B=1;
        #130 in_B=0;
    join
    
endmodule