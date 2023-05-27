module tb_problem5;
    reg x,reset,clock;
    wire y;
    problem5 UUT(
        .y_out(y),
        .x_in(x),
        .reset(reset),
        .clock(clock)
    );
    initial #200 $finish;
    always #10 clock=~clock;
    initial fork
        #0 reset=0;
        #0 x=1;
        #0 clock=0;
        #40 reset=1;
        #60 x=0;
        #100 reset=0;
        #110 reset=1;
        #120 x=0;
        #150 x=1;    
    join
endmodule