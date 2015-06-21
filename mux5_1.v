`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:43:22 06/18/2015 
// Design Name: 
// Module Name:    mux5_1 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mux5_1 #(parameter SZE = 4)
	(input [SZE-1:0] in0,
	 input [SZE-1:0] in1,
	 input [SZE-1:0] in2,	
	 input [SZE-1:0] in3,
	 input [SZE-1:0] in4,
	 input [2:0]	sel,
	 output [SZE-1:0] out,
	 output [SZE-1:0] outbar
    );
	 
	 assign out = sel[2] ? in4 : ( sel[1] ? (sel[0] ? in3 : in2) : (sel[0] ? in1 : in0) );
	 assign outbar = ~out;
	 
endmodule


