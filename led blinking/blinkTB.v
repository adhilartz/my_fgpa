`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:42:40 10/13/2021
// Design Name:   blink
// Module Name:   C:/iverilog/New folder/PAPILIO/blinkTB.v
// Project Name:  PAPILIO
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: blink
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module blinkTB;

	// Inputs
	reg clk;

	// Outputs
	wire led;

	// Instantiate the Unit Under Test (UUT)
	blink uut (
		.clk(clk), 
		.led(led)
	);

	always begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10000;
        
		// Add stimulus here

	end
 always #1000 clk = ~clk;
endmodule

