`timescale 100ps / 10ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:13:40 06/21/2015
// Design Name:   HW3_2
// Module Name:   /home/joshua/Documents/HW3/tb_HW3_2.v
// Project Name:  HW3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: HW3_2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_HW3_2;

	// Inputs
	reg [3:0] op;
	reg CLK;
	reg RST;
	reg sinR;
	reg sinL;
	reg [7:0] Din;

	// Outputs
	wire [7:0] Dout;
	wire soutR;
	wire soutL;

	// Instantiate the Unit Under Test (UUT)
	HW3_2 #(.SZE(8))
	uut (
		.op(op), 
		.CLK(CLK), 
		.RST(RST), 
		.sinR(sinR), 
		.sinL(sinL), 
		.Din(Din), 
		.Dout(Dout), 
		.soutR(soutR), 
		.soutL(soutL)
	);

	initial begin
		// Initialize Inputs
		op = 4'b0000;
		CLK = 0;
		RST = 1;
		sinR = 1;
		sinL = 1;
		Din = 8'b10101010;

		// Wait 100 ns for global reset to finish
		#100 RST = 0;
        
		// Add stimulus here
		op = 4'b0000;
		#100;
		
	end
	
	always begin
	#100 CLK = ~CLK;
	end
	
	always @(negedge CLK)
	begin
		op = op + 1;
		
		
	end
      
endmodule

