`timescale 1ns / 1ps
module rampgen(clk,ramp);

output [7:0] ramp;
reg [31:0] count;
input clk;

initial count = 0;

always@(posedge clk)
	begin 

	count= count+1;
   end
	assign ramp = count [23:16];

endmodule
