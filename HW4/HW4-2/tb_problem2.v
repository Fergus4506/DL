module tb_problem2;
    reg clk,reset;
    wire Q1,Q2,Q4,Q8;
    problem2 uut(Q1,Q2,Q4,Q8,reset,clk);
    initial #200 $finish;
    always #5 clk=~clk;
    initial fork
        #0 clk=0;
        #0 reset=0;
        #15 reset=1;
    join
endmodule