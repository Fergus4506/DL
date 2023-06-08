module tb_problem3;
    reg clk,reset;
    wire [2:0]state;
    probelm3 uut(clk,reset,state);
    initial #200 $finish;
    always #10 clk=~clk;
    initial fork
        #0 clk=0;
        #0 reset=0;
        #15 reset=1;
    join
endmodule