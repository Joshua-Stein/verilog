`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   04:52:19 06/18/2015
// Design Name:   mux5_1
// Module Name:   /home/joshua/Documents/circuit1/muxTest.v
// Project Name:  circuit1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux5_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module muxTest;

	// Inputs
	reg [3:0] in0;
	reg [3:0] in1;
	reg [3:0] in2;
	reg [3:0] in3;
	reg [3:0] in4;
	reg [2:0] sel;

	// Outputs
	wire [3:0] out;
	wire [3:0] outbar;

	// Instantiate the Unit Under Test (UUT)
	mux5_1 #(.SZE(4))
	uut(
		.in0(in0), 
		.in1(in1), 
		.in2(in2), 
		.in3(in3), 
		.in4(in4), 
		.sel(sel), 
		.out(out), 
		.outbar(outbar)
	);

	initial begin
		// Initialize Inputs
		in0 = -2;
		in1 = -1;
		in2 = 0;
		in3 = 1;
		in4 = 2;
		sel = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

