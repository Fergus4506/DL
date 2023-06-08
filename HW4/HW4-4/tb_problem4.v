module tb_problem4;
    wire SO;
    reg SI,clk,reset;
    problem4 uut(SO,SI,clk,reset);
    initial #200 $finish;
    always #10 clk=~clk;
    initial fork
        #0 clk=0;
        #0 SI=0;
        #0 reset=0;
        #10 reset=1;
        #25 SI=1;
        #40 SI=0;
        #100 SI=1;
        #150 SI=0;
    join
endmodule