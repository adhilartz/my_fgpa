`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:03:06 12/02/2021
// Design Name:   pwm
// Module Name:   C:/iverilog/mace/pwm/pwmtb.v
// Project Name:  pwm
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pwm
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pwmtb;

	// Inputs
	reg [7:0] pin;
	reg clk;

	// Outputs
	wire pout;

	// Instantiate the Unit Under Test (UUT)
	pwm uut (
		.pin(pin), 
		.pout(pout), 
		.clk(clk)
	);
	always begin
	#10 clk = ~clk; 
	
	end
	
	initial begin
		// Initialize Inputs
		pin = 128;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

