module tb_problem4;
    reg x,reset,clock;
    wire y;
    problem4 UUT(
        .y_out(y),
        .x_in(x),
        .reset(reset),
        .clock(clock)
    );
    initial #200 $finish;
    always #10 clock=~clock;
    initial fork
    #0 clock=0;
    #0 reset=0;
    #2 reset=1;
    #0 x=0;
    #10 x=0;
    #20 x=1;
    #30 x=0;
    #40 x=1;
    #50 x=0;
    #60 x=1;
    #70 x=0;
    #80 x=1;
    #90 x=0;
    #110 x=0;
    #120 x=1;
    #130 x=0;
    #140 x=1;
    #145 reset=0;
    #147 reset=1;
    #150 x=0;
    #160 x=1;
    #170 x=0;
    #180 x=1;
    #190 x=0;
join
endmodule