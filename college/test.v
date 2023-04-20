module mux8_1 (input [7:0] in, input [2:0] sel, output reg out);

  always @*
  case (sel)
    3'b000: out = in[0];
    3'b001: out = in[1];
    3'b010: out = in[2];
    3'b011: out = in[3];
    3'b100: out = in[4];
    3'b101: out = in[5];
    3'b110: out = in[6];
    3'b111: out = in[7];
  endcase
  
endmodule


module test_mux8_1;

reg [7:0] _in;
reg [2:0] _sel;
wire _out;

mux8_1 full(.in(_in),.sel(_sel),.out(_out));

initial begin
  // test case 1
  _in = 8'b10000000;
  _sel = 3'b000;
  #10
  if (_out != 1'b1) $display("Test case 1 failed. Expected output 1, but got %d", _out);
  
  // test case 2
  _in = 8'b01000000;
  _sel = 3'b001;
  #10
  if (_out != 1'b0) $display("Test case 2 failed. Expected output 0, but got %d", _out);
  
  // test case 3
  _in = 8'b00100000;
  _sel = 3'b010;
  #10
  if (_out != 1'b0) $display("Test case 3 failed. Expected output 0, but got %d", _out);
  
  // test case 4
  _in = 8'b00010000;
  _sel = 3'b011;
  #10
  if (_out != 1'b0) $display("Test case 4 failed. Expected output 0, but got %d", _out);
  
  // test case 5
  _in = 8'b00001000;
  _sel = 3'b100;
  #10
  if (_out != 1'b0) $display("Test case 5 failed. Expected output 0, but got %d", _out);
  
  // test case 6
  _in = 8'b00000100;
  _sel = 3'b101;
  #10
  if (_out != 1'b0) $display("Test case 6 failed. Expected output 0, but got %d", _out);
  
  // test case 7
  _in = 8'b00000010;
  _sel = 3'b110;
  #10
  if (_out != 1'b0) $display("Test case 7 failed. Expected output 0, but got %d", _out);
  
  // test case 8
  _in = 8'b00000001;
  _sel = 3'b111;
  #10
  if (_out != 1'b0) $display("Test case 8 failed. Expected output 0, but got %d", _out);
  
end

endmodule
