module shift_Register_3bit(
        output reg [2:0] A_par,
        input [2:0] I_par,
        input s1,s0,MSB_in,LSB_in,CLK,Clear_b
    );

    always@(posedge CLK,negedge Clear_b)
        if(~Clear_b) A_par<=3'b000;
        else case({s1,s0})
            2'b00:A_par<=A_par;
            2'b01:A_par<={MSB_in,A_par[2:1]};
            2'b10:A_par<={A_par[1:0],LSB_in};
            2'b11:A_par<=I_par;
        endcase
endmodule