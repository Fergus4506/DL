module Decoder_3x8(
        input x,y,z,
        output [7:0] D
    );

    wire [2:0] D0_wire,D1_wire;

    

    // assign D[0]=((!x)&&(!y)&&(!z)),
    // D[1]=((!x)&&(!y)&&(z)),
    // D[2]=((!x)&&(y)&&(!z)),
    // D[3]=((!x)&&(y)&&(z)),
    // D[4]=((x)&&(!y)&&(!z)),
    // D[5]=((x)&&(!y)&&(z)),
    // D[6]=((x)&&(y)&&(!z)),
    // D[7]=((x)&&(y)&&(z));

    and G0(D[0],D0_wire[0],D0_wire[1],D0_wire[2]);
    and G1(D[1],D0_wire[0],D0_wire[1],z);
    and G2(D[2],D0_wire[0],y,D0_wire[2]);
    and G3(D[3],D0_wire[0],y,z);
    and G4(D[4],x,D0_wire[1],D0_wire[2]);
    and G5(D[5],x,D0_wire[1],z);
    and G6(D[6],x,y,D0_wire[2]);
    and G7(D[7],x,y,z);

    not G8(D0_wire[0],x);
    not G9(D0_wire[1],y);
    not G10(D0_wire[2],z);

endmodule