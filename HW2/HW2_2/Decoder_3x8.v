module Decoder_3x8(
        input x,y,z,
        output [7:0] D
    );

    assign D[0]=((!x)&&(!y)&&(!z)),
    D[1]=((!x)&&(!y)&&(z)),
    D[2]=((!x)&&(y)&&(!z)),
    D[3]=((!x)&&(y)&&(z)),
    D[4]=((x)&&(!y)&&(!z)),
    D[5]=((x)&&(!y)&&(z)),
    D[6]=((x)&&(y)&&(!z)),
    D[7]=((x)&&(y)&&(z));
endmodule