`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:01:41 06/18/2015
// Design Name:   LED
// Module Name:   /home/joshua/Documents/circuit1/TB_LED.v
// Project Name:  circuit1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: LED
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_LED;

	// Inputs
	reg [3:0] N;

	// Outputs
	wire [7:0] outLED;

	// Instantiate the Unit Under Test (UUT)
	LED uut (
		.N(N), 
		.outLED(outLED)
	);

	initial begin
		// Initialize Inputs
		N = 10;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

