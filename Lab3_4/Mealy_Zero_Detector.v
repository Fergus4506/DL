module Mealy_Zero_Detector (
  output reg y_out, 
  input x_in, clock, reset
);
  reg [1: 0]	state, next_state;
  parameter	S0 = 2'b00, S1 = 2'b01, S2 = 2'b10, S3 = 2'b11;

  always @ (posedge clock, negedge reset)	// state transition
    if (reset == 0) state <= S0;
    else state <= next_state;

  always @ (state, x_in) // Form the next state
    case (state)
      S0:	if (x_in)   next_state = S1; else next_state = S0;
      S1: if (x_in) 	  next_state = S3; else next_state = S0;
      S2:	if (~x_in) next_state = S0; else next_state = S2;
      S3: if (x_in)   next_state = S2; else next_state = S0;
    endcase 

  always @ (state, x_in) // Form the output
    case (state)
      S0:	y_out = 0;
      S1, S2, S3: y_out = ~x_in;
    endcase 
endmodule 
