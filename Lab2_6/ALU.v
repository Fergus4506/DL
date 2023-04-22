module ALU(result,overflow,a,b,op);
	input [3:0] a;
	input [3:0] b;
	input [2:0] op;
	output[3:0] result;
	output overflow;
	
	reg [4:0] Result;
	
	assign result = {Result[3],Result[2],Result[1],Result[0]};
	assign overflow = (op==3'b000||op==3'b001)?Result[4]:0;
	
	always@(a,b,op)
	begin
		case(op)
			3'b000:Result=a+b;//ADD
			3'b001:Result=a-b;//SUB
			3'b100:Result=a&b;//AND
			3'b101:Result=a|b;//OR
			3'b110:Result=a^b;//XOR
			3'b111:Result=~(a|b);//NOR
		endcase
	end
endmodule
			
	