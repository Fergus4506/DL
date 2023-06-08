module tb_problem2;
    reg clk,reset;
    problem2 uut(reset,clk);
    initial #200 $finish;
    always #10 clk=~clk;
    initial fork
        #0 clk=0;
        #0 reset=0;
        #15 reset=1;
    join
endmodule