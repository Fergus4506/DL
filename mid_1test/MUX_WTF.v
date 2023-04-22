module MUX_WTF(S,C,A,WTF);
    input [3:0]A,WTF;
    output [3:0]S;
    output C;

    reg [4:0]t;

    assign S={t[3],t[2],t[1],t[0]},
        C=t[4];
    
    always @(A,WTF)
    begin
        case(A)
            4'b0000:t=WTF+WTF;
            4'b0011:t=WTF-WTF;
            4'b0101:t=WTF&WTF;
            4'b1100:t=WTF|WTF;
            4'b1101:t=~(WTF);
        endcase
    end
    


endmodule