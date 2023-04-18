module top(
    input [7:0] SW,
    input [4:0] BTN,
    output [7:0] LED
    );
        reg [2:0] op = 3'b000;
        wire [3:0] a;
        wire [3:0] b;
        wire [3:0] result;
        wire overflow;
        ALU c_alu(
                        .a (a),
                        .b (b), 
                        .op (op), 
                        .result (result), 
                        .overflow (overflow)
                    );             
	 always@(BTN)
        begin
            case(BTN)
                5'b00001: op = 3'b000; //ADD
                5'b00010: op = 3'b001; //SUB
                5'b00100: op = 3'b100; //AND
                5'b01000: op = 3'b101; //OR
                5'b10000: op = 3'b110; //XOR
                default:  op = op;
            endcase;
        end;       
        assign a = SW[7:4];
        assign b = SW[3:0];
        assign LED[3:0] = result;
        assign LED[4] = overflow;
        assign LED[7:5] = op;      
endmodule
