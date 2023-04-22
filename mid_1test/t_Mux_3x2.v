module t_Mux_3x2;
    reg [1:0]A;
    reg [2:0]B;
    wire [3:0]S;

    Mux_3x2 uut(S,A,B);

    initial begin 
        A=2'b00;
        B=3'b000;
        repeat(4) begin
            #25 A=A+2'b01;
            #25 B=B+3'b001;
        end 
    end
    initial #200 $finish
endmodule