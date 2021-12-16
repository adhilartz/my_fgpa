`timescale 1ns / 1ps
module pwm(pin,pout,clk);

input clk;
input [7:0] pin;
output reg pout;

wire [7:0] cout;

always@(posedge clk)
	begin
	if(pin>cout)
	pout=1;
	else pout=0;
	end
	
count count_inst( .clk(clk), .counter(cout));

endmodule

