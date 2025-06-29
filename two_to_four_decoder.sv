`timescale 1ns/10ps

module two_to_four_decoder(in, out,enable);
	input [1:0] in;
	input logic enable;
	output [3:0] out;
	logic not0, not1;
	
	not #(50) notin0(not0, in[0]);
	not #(50) notin1(not1, in[1]);
	
	and #(50) num0 (out[0] ,not1, not0, enable);
	and #(50) num1 (out[1] ,not1, in[0], enable);
	and #(50) num2 (out[2] ,in[1], not0, enable);
	and #(50) num3 (out[3] ,in[1], in[0],  enable);
	
endmodule