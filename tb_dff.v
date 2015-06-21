`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:38:32 06/16/2015
// Design Name:   dfftop
// Module Name:   /home/joshua/Documents/circuit1/tb_dff.v
// Project Name:  circuit1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dfftop
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_dff;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [3:0] q;
	wire [3:0] qnot;

	// Instantiate the Unit Under Test (UUT)
	dfftop uut (
		.clk(clk), 
		.rst(rst), 
		.q(q), 
		.qnot(qnot)
	);

	initial begin
		// Initialize Inputs
		clk = 1;
		rst = 1;
		#10 rst=0;
		

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	

	always begin
		#5 clk = ~clk;
	end
      
endmodule

