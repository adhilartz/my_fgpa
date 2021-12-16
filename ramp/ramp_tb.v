`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:57:19 12/01/2021
// Design Name:   rampgen
// Module Name:   C:/iverilog/mace/Ramp/ramp_tb.v
// Project Name:  Ramp
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: rampgen
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ramp_tb;

	// Inputs
	reg clk;
	reg [15:0]ramp;

	// Instantiate the Unit Under Test (UUT)
	rampgen uut (
		.clk(clk),
		.ramp(ramp)
	);
   
	always begin
		// Initialize Inputs
		clk = 0; #50
		clk = 1; #50;

		// Wait 100 ns for global reset to finish
		
        
		// Add stimulus here

	end
      
endmodule

