module problem1(
        input x,reset,clock,
        output y
    );
    reg[1:0] state;
    parameter S0=2'b00,S1=2'b01,S2=2'b10,S3=2'b11;
    always@(posedge clock,negedge reset)
        if(reset==0)state<=S0;
        else case(state)
            S0: if(x) state<=S1;else state<=S0;
            S1: if(x) state<=S2;else state<=S1;
            S2: if(x) state<=S3;else state<=S2;
            S3: if(x) state<=S1;else state<=S3;
        endcase
    assign y=(state[0]&state[1]);
endmodule