`timescale 1ns / 1ps
module count(counter,clk);

output [7:0] counter;
input clk;
reg [7:0] counter=0;

always@(posedge clk)
	counter =counter +1;
endmodule
