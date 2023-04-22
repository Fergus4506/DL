module compare(
        input [4:0]A,B,
        output S,Ab,Bb
    );

    assign S=(A==B);
    assign Ab=(A>B);
    assign Bb=(B>A);
endmodule