module t_E_Decoder_2x4;
    reg A,B,E;
    wire [3:0]D;
    E_Decoder_2x4 uut(D,A,B,E);
    initial begin
        A=0;B=0;E=0;
        #50 A=1;
        #50 E=1;
        #50 B=1;
    end
    initial #200 $finish;
endmodule