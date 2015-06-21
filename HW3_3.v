`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:26:08 06/21/2015 
// Design Name: 
// Module Name:    HW3_3 
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
module HW3_3 #(parameter MAX = 9, SZE = 4)
	(
	input CLK,
	input RST,
   output reg[SZE-1:0] out 
	 );
	 
	 initial begin
		out = 0;
	 end
	 
	 always @(posedge CLK)
	 begin
		if(RST)
			out <= 0;
			
		else begin
			if(out == MAX)
				out <= 0;
			else
				out <= out + 1;
		end
		
	end


endmodule
