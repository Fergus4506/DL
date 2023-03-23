module BCD2Excess6(W,X,Y,Z,A,B,C,D);
	output W,X,Y,Z;
	input A,B,C,D;
	
	assign W=(A||B||C),
		   X=(((!B)&&(!C))||(B&&C)),
		   Y=(!C),
		   Z=(D);
endmodule
