module Full_adder_1bit (sum,cout,cin,x,y);

input x,y,cin;
output sum,cout;

wire w1,w2,w3;

xor (sum,x,y,cin);

and (w1,x,cin);
and (w2,y,cin);
and (w3,x,y);

or (cout,w1,w2,w3);

endmodule

module Full_adder_2bit (cin,x,y,sum,cout);

input cin;
input [1:0] x,y;
output cout;
output [1:0] sum;

Full_adder_1bit m0(.sum(sum[0]),.cout(w1),.cin(cin),.x(x[0]),.y(y[0]));
Full_adder_1bit m1(.sum(sum[1]),.cout(cout),.cin(w1),.x(x[1]),.y(y[1]));

endmodule

module test_Full_adder_2bit;

reg _cin;
reg [1:0]i0,i1;

wire _cout;
wire [1:0]_sum;

Full_adder_2bit mm(.cin(_cin),.x(i0),.y(i1),.sum(_sum),.cout(_cout));

initial begin
_cin=1'b1; i0=2'b11; i1=2'b11;

#20

_cin=1'b0; i0=2'b00; i1=2'b00;
#20

_cin=1'b1; i0=2'b10; i1=2'b10;
#20

i0=2'b01; i1=2'b01;
#20

_cin=1'b0; i0=2'b00; i1=2'b11;


end

endmodule
