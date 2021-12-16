`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:47:38 12/04/2021
// Design Name:   sin_rom
// Module Name:   C:/iverilog/mace/sinepwm/testrom.v
// Project Name:  sinepwm
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sin_rom
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testrom;

	// Inputs
	reg clka;
	reg [3:0] addra;

	// Outputs
	wire [7:0] douta;

	// Instantiate the Unit Under Test (UUT)
	sin_rom uut (
		.clka(clka), 
		.addra(addra), 
		.douta(douta)
	);
always #5 clka =~clka;
	initial begin
		// Initialize Inputs
		clka = 0;
		addra = 1; #100
		addra = 2; #100
		addra = 3; #100
		addra = 4; #100
		addra = 5; #100
		addra = 6; #100
		addra = 7; #100

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

