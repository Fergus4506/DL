module tb_ALU;

	reg [3:0] a;
	reg [3:0] b;
	reg [2:0] op;
	wire[3:0] result;
	wire overflow;
	
	ALU uut(
		.result(result),
		.overflow(overflow),
		.a(a),
		.b(b),
		.op(op)
	);
	
	initial begin
    $display ("                  time     a            b        op  overflow  result");
    $monitor ($time, "    %b       %b     %b     %b       %b", a, b, op, overflow, result);
	end
  
	initial begin

		a = 4'b1010;
		b = 4'b0100;
		op = 3'b000;
		#10 op = 3'b001;
		#10 op = 3'b100;
		#10 op = 3'b101;
		#10 op = 3'b110;
		#10 op = 3'b111;
		#30 a = 4'b0101;
		       b = 4'b1011;
		       op = 3'b000;
		#10 op = 3'b001;
		#10 op = 3'b100;
		#10 op = 3'b101;
		#10 op = 3'b110;
		#10 op = 3'b111;
	end
	
   initial #150 $finish;
endmodule
