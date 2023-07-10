module mux2_1 (i0,i1,s,out);

input i0,i1,s;
output out;

wire w0,w1,w2;

not(w0,s);
and(w1,w0,i0);

and (w2,i1,s);

or (out,w1,w2);

endmodule


module test_mux2_1;

reg _i0,_i1,_s;
wire _out;

mux2_1 full(.i0(_i0),.i1(_i1),.s(_s),.out(_out));

initial begin
_i0=1'b0; _i1=1'b0; _s=1'b0;

#10

_i0=1'b0; _i1=1'b0; _s=1'b1;

#10

_i0=1'b0; _i1=1'b1; _s=1'b0;

#10

_i0=1'b0; _i1=1'b1; _s=1'b1;

#10

_i0=1'b1; _i1=1'b0; _s=1'b0;

#10

_i0=1'b1; _i1=1'b0; _s=1'b1;

#10

_i0=1'b1; _i1=1'b1; _s=1'b0;

#10

_i0=1'b1; _i1=1'b1; _s=1'b1;

end

endmodule
