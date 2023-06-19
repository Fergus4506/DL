module tb_detector_more3;
    wire y_out;
    reg x_in,clock,reset;

    detector_more3 uut(
        .clock(clock),
        .reset(reset),
        .y_out(y_out),
        .x_in(x_in)
    );

    initial #110 $finish;
    always #5 clock=~clock;
    initial fork
        #0 clock=0;
        #0 reset=0;
        #0 x_in=0;
        #25 reset=1;
        #35 x_in=1;
        #75 x_in=0;
    join
endmodule