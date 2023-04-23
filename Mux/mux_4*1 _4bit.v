module mux_4x1 (i0,i1,i2,i3,s0,s1,out);

input i0,i1,i2,i3,s0,s1;
output out;

wire ns0,ns1,wi0,wi1,wi2,wi3;

not(ns0,s0);
not(ns1,s1);

and(wi0,i0,ns0,ns1);

and(wi1,i1,s0,ns1);

and(wi2,i2,ns0,s1);

and(wi3,i3,s0,s1);

or (out,wi0,wi1,wi2,wi3);

endmodule

module mux_4x1_4bit (i0,i1,i2,i3,s0,s1,out);

input [3:0] i0,i1,i2,i3;
input s0,s1;

output [3:0] diff;
output out;

mux_4x1 m0(.x(x[0]),.y(y[0]),.bin(_bin),.diff(diff[0]),.bout(w1));
mux_4x1 m1(.x(x[1]),.y(y[1]),.bin(w1),.diff(diff[1]),.bout(out));
mux_4x1 m2(.x(x[2]),.y(y[2]),.bin(w1),.diff(diff[2]),.bout(out));
mux_4x1 m4(.x(x[3]),.y(y[3]),.bin(w1),.diff(diff[3]),.bout(out));

endmodule

module test_mux4_1;

reg _i0,_i1,_i2,_i3,_s0,_s1;
wire _out;

mux4_1 full(.i0(_i0),.i1(_i1),.i2(_i2),.i3(_i3),.s0(_s0),.s1(_s1),.out(_out));

initial begin
_i0=1'b1; _i1=1'b0; _i2=1'b0; _i3=1'b0; _s0=1'b0; _s1=1'b0;

#10

_i0=1'b1; _i1=1'b0; _i2=1'b1; _i3=1'b1; _s0=1'b1; _s1=1'b0;

#10

_i0=1'b0; _i1=1'b0; _i2=1'b1; _i3=1'b0; _s0=1'b0; _s1=1'b1;

#10

_i0=1'b0; _i1=1'b0; _i2=1'b0; _i3=1'b1; _s0=1'b1; _s1=1'b1;


end

endmodule
