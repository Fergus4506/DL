module tb_problem5;
    wire [7:0]Q;
    reg clk,reset;
    problem5 uut(Q,clk,reset);
    initial #200 $finish;
    always #10 clk=~clk;
    initial fork
        #0 clk=0;
        #0 reset=0;
        #10 reset=1;
    join 
endmodule