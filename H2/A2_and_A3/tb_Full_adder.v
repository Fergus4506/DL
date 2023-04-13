module Full_adder_tb;
    reg x,y,z;
    wire S,C;

    Full_adder uut(
        .S(S),
        .C(C),
        .x(x),
        .y(y),
        .z(z)
    );

    initial begin
        x=0;y=0;z=0;
        #50 x=0;y=1;z=0;
        #50 x=0;y=1;z=1;
        #50 x=1;y=1;z=1;
    end
initial #200 $finish;
endmodule