module tb_T_counter_3bit;
    reg clock,reset;
    wire [2:0]A;

    T_counter_3bit uut(
        .clock(clock),
        .reset(reset),
        .A(A)
    );

    initial #200 $finish;
    always #10 clock=~clock;
    initial fork
        #0 clock=0;
        #0 reset=0;
        #25 reset=1;
    join
endmodule