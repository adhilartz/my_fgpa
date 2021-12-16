`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:07:25 12/03/2021
// Design Name:   pulsegen
// Module Name:   C:/iverilog/mace/pwm/tst_pulsegen.v
// Project Name:  pwm
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pulsegen
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tst_pulsegen;

	// Inputs
	reg clk;

	// Outputs
	wire pulse;

	// Instantiate the Unit Under Test (UUT)
	pulsegen uut (
		.clk(clk), 
		.pulse(pulse)
	);
	always #5 clk =~clk;
	
	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

