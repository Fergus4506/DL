module t_D_ff;
    reg D,ck,E;
    wire Q;

    D_ff uut(
        .Q(Q),
        .D(D),
        .ck(ck),
        .E(E)
    );
   
    initial begin
        D=1;
        ck=0;
        E=0;
        repeat(5) begin
            #30 D=~D;
            #10 E=~E;
        end
    end
    initial #150 $finish;
    always #20 ck=~ck;
endmodule