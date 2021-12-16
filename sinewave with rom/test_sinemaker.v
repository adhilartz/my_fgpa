`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:22:53 12/04/2021
// Design Name:   sinemaker
// Module Name:   C:/iverilog/mace/sinepwm/test_sinemaker.v
// Project Name:  sinepwm
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sinemaker
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_sinemaker;

	// Inputs
	reg Clk;

	// Outputs
	wire [7:0] data;

	// Instantiate the Unit Under Test (UUT)
	sinemaker uut (
		.Clk(Clk), 
		.data(data)
	);
	always #5 Clk =~Clk;
	initial begin
		// Initialize Inputs
		Clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

