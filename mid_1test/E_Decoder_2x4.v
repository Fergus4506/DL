module E_Decoder_2x4(D,A,B,E);
    input A,B,E;
    output [3:0]D;
    wire NA,NB;
    not (NA,A);
    not (NB,B);
    and (D[0],NA,NB,E);
    and (D[1],NA,B,E);
    and (D[2],A,NB,E);
    and (D[3],A,B,E);
endmodule