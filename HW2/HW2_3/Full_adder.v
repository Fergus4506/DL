module Full_adder(
        input x,y,z,
        output S,C
    );
    wire [7:0] D_wire;

    Decoder_3x8 uut(
        .D(D_wire),
        .x(x),
        .y(y),
        .z(z)
    );

    assign S=D_wire[1]||D_wire[2]||D_wire[4]||D_wire[7],
    C=D_wire[3]||D_wire[5]||D_wire[6]||D_wire[7];

endmodule