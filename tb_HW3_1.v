`timescale 100ps / 10ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:26:40 06/18/2015
// Design Name:   HW3_1
// Module Name:   /home/joshua/Documents/HW3/tb_HW3_1.v
// Project Name:  HW3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: HW3_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_HW3_1;

	// Inputs
	reg [0:0] in0;
	reg [0:0] in1;
	wire [0:0] out;
	wire [0:0] outbar;
	reg en;
	reg clk, rst;
	

	// Instantiate the Unit Under Test (UUT)
	HW3_1 #(.SZE(1)) uut (
		.in0(in0), 
		.in1(in1),
		.en(en),
		.clk(clk),
		.rst(rst),
		.out(out),
		.outbar(outbar)
	);

	initial begin
		// Initialize Inputs
		in0 = 1'b1;
		in1 = 1'b0;
		en = 1'b1;
		//out = 1'b0;
		//outbar = 1'b0;
		// Wait 100 ns for global reset to finish
		rst = 1;
		clk = 1;
		#10 rst = 0;
		#100 en = 0;
        
		// Add stimulus here
		
	end
	
	always begin
		#5 clk = ~clk;
		//#20 rst = ~rst;
	end
	
	/*always @(posedge clk or posedge rst)
	begin
	
   end */
	
endmodule

