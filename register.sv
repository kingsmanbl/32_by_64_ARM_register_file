`timescale 1ps/100fs;
module register(in, out, clk, enable);
	input logic [63:0] in;
	output logic [63:0] out;
	input logic enable, clk;
	
	genvar i;
	
	generate
		for(i=0; i < 64; i++) begin : eachDff
			D_FF_enabled dff (.q(out[i]),.d(in[i]),.clk ,.enable(enable));
		end
	endgenerate
	
endmodule