`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:40:53 10/13/2021 
// Design Name: 
// Module Name:    blink 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module blink(
   input clk,
	output led
);

	
	localparam CLOCK_FREQUENCY = 50000000; //00000;


	reg [31:0] counter = 0;
	
	reg rreg = 0;
	assign led = rreg;
	
initial counter = 0;
 always @(posedge clk) 
         begin 
			
			if (counter > 50000000) 
			begin
				rreg = ~rreg;
				counter = 0;  
			end 
			else 
				counter = counter + 1; 
			
			end
			

endmodule
