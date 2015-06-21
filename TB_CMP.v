`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   06:06:10 06/18/2015
// Design Name:   comparator
// Module Name:   /home/joshua/Documents/circuit1/TB_CMP.v
// Project Name:  circuit1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: comparator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_CMP;

	// Inputs
	reg [1:0] in0;
	reg [1:0] in1;

	// Outputs
	wire EQ;
	wire GTR;
	wire LR;

	// Instantiate the Unit Under Test (UUT)
	comparator uut (
		.in0(in0), 
		.in1(in1), 
		.EQ(EQ), 
		.GTR(GTR), 
		.LR(LR)
	);

	initial begin
		// Initialize Inputs
		in0 = 4;
		in1 = 3;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

