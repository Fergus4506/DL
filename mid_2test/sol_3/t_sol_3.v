module tb_detector;
    wire y_out;
    reg x_in,clock,reset;

    detector uut(
        .y_out(y_out),
        .x_in(x_in),
        .clock(clock),
        .reset(reset)
    );

    initial #105 $finish;
    always #5 clock=~clock;
    initial fork
        #0 clock=0;
        #0 reset=0;
        #0 x_in=0;
        #25 reset=1;
        #35 x_in=1;
        #45 x_in=0;
        #65 x_in=1;
        #85 x_in=0;
        #95 x_in=1;

        
    join
endmodule