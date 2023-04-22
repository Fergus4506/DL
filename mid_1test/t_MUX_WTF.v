module t_MUX_WTF;
    reg [3:0]A,WTF;
    wire [3:0]S;
    wire C;

    MUX_WTF u(S,C,A,WTF);

    initial begin
        $display("ha ha hia");
        $monitor($time,"%b    %b    %b    %b",A,WTF,S,C);
    end

    initial begin
        A=0;WTF=4'b0010;
        #30 WTF=4'b1010;
        #30 A=4'b1010;
        #30 A=4'b1100;
        #30 A=4'b1101;
    end
    initial #150 $finish;


endmodule