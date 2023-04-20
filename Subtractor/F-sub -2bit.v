module Full_sub_1bit (x,y,bin,diff,bout);

input x,y,bin;
output diff,bout;

wire xor_xy,not_x,w1,w2;

xor (xor_xy,x,y);
xor (diff,bin,xor_xy);

not (not_x,x);
and (w1,not_x,y);

not(not_xor_xy,xor_xy);
and (w2,not_xor_xy,bin);

or (bout,w2,w1);
endmodule

module Full_sub_2bit (x,y,bin,diff,bout);

input [1:0] x,y;
input _bin;
output [1:0] diff;
output _bout;

Full_adder_1bit m0(.x(x[0]),.y(y[0]),.bin(bin),.diff(diff[0]),.bout(w1));
Full_adder_1bit m1(.x(x[1]),.y(y[1]),.bin(bin),.diff(diff[1]),.bout(_bout));

endmodule


module test_Full_sub_1bit;

wire _diff,_bout;

reg [1:0]b0,01;
reg _bin;

wire [1:0]_diff;
wire _bout;

Full_sub_2bit full(.x(b0),.y(b1),.bin(_bin),.diff(_diff),.bout(_bout));


initial begin

i0=2'b11; i1=2'b11; _bin=1'b0;

#10

i0=2'b11; i1=2'b00; _bin=1'b0;

#10

i0=2'b10; i1=2'b01; _bin=1'b0;

#10
end

endmodule