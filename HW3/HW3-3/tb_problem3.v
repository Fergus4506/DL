module tb_problem3;
    reg x,reset,clock;
    wire y;
    problem3 UUT(
        .y_out(y),
        .x_in(x),
        .reset(reset),
        .clock(clock)
    );
    initial #200 $finish;
    always #10 clock=~clock;
    initial begin
        reset=1;
        x=0;
        clock=0;
        repeat(1) begin
            #20 reset=~reset;
        end
        #15 reset=1;
        repeat(6) begin
            #20 x=~x;
        end
    end
endmodule