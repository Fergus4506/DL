module tb_problem3;
    reg x,reset,clock;
    wire y;
    problem3 UUT(
        .y_out(y),
        .x_in(x),
        .reset(reset),
        .clock(clock)
    );
    initial #200 $finish;
    always #5 clock=~clock;
    initial begin
		#0 clock=0;
		   reset=0;
		#10 reset=1;
			x=0;
		#10 x=1;	
		#10 x=0;	
		#10 x=1;	
		#10 x=0;	
		#10 x=0;	
		#10 x=1;	
		#10 x=0;	
		#10 x=1;	
		#10 x=1;	
		#10 x=1;	
	end
endmodule