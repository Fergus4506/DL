module D_ff(
        input D,ck,E,
        output reg Q
    );

    always @(negedge ck,negedge E)
        if(E==0)Q<=1'b0;
        else Q<=D;
endmodule