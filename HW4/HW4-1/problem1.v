module problem1(A,B,in_B,control,reset,clk);
    input [3:0]A;
    input [3:0]B;
    input in_B;
    input reset,clk,control;
    reg [3:0]t_A,t_B;
    reg C;
    wire S;
    wire con_clk;
    assign x=t_A[0],
           y=t_B[0],
           con_clk=control&clk,
           S=x^y^C;

    // always@(posedge control)
    //     t_A<=A;
        
    // always@(posedge control)
    //     t_B<=B;

    always@(posedge con_clk,negedge reset)
        if(~reset)C<=1'b0;
        else if(C==1'b0)
            C<=t_A[0]&t_B[0];
        else
            C<=~(t_A[0]&t_B[0]);
            
    always@(posedge con_clk,negedge control)
        if((~control)&(~reset))t_A<=4'b0000;//這行要放什麼是關鍵(是否需設定暫存器目前存取值 t_A<=A)
        else if(~control)t_A<=t_A;
        else if(S) t_A<={1'b1,t_A[3:1]};
        else t_A<={1'b0,t_A[3:1]};
        
    always@(posedge con_clk,negedge control)
        if((~control)&(~reset))t_B<=4'b0000;//這行要放什麼是關鍵(是否需設定暫存器目前存取值 t_B<=B)
        else if(~control)t_B<=t_B;
        else t_B<={in_B,t_B[3:1]};
endmodule