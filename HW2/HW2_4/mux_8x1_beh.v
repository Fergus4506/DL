module MUX_8x1(
        input A,B,C,D,
        output F 
    );
    wire [5:0] ck;
    assign ck[0]=(!A)&&(!B)&&(!C)&&(!D),
    ck[1]=(!A)&&(!B)&&(C)&&(!D),
    ck[2]=(!A)&&(B)&&(!C)&&(D),
    ck[3]=(A)&&(!B)&&(!C)&&(!D),
    ck[4]=(A)&&(!B)&&(C)&&(!D),
    ck[5]=(A)&&(B)&&(C)&&(!D),
    F=ck[0]||ck[1]||ck[2]||ck[3]||ck[4]||ck[5];

endmodule