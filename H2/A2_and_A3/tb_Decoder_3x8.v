module Decoder_3x8_t;
    reg x,y,z;
    wire [7:0] D;

    Decoder_3x8 uut(
        .D(D),
        .x(x),
        .y(y),
        .z(z)
    );

    initial begin
        x=0;y=0;z=0;
        #50 x=0;y=1;z=0;
        #50 x=0;y=1;z=1;
        #50 x=1;y=0;z=1;
    end
initial #200 $finish;
endmodule