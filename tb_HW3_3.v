`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:36:49 06/21/2015
// Design Name:   HW3_3
// Module Name:   /home/joshua/Documents/HW3/tb_HW3_3.v
// Project Name:  HW3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: HW3_3
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_HW3_3;

	// Inputs
	reg CLK;
	reg RST;

	// Outputs
	wire [3:0] out;

	// Instantiate the Unit Under Test (UUT)
	HW3_3 uut (
		.CLK(CLK), 
		.RST(RST), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		RST = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	always begin
		#10 CLK = ~CLK;
	end
      
endmodule

