`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:17:02 06/18/2015 
// Design Name: 
// Module Name:    HW3_1 
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
module HW3_1 #(parameter SZE = 1)
	 (
	 input [SZE-1:0] in0,
	 input [SZE-1:0] in1,
	 //input  [SZE-1:0] d,
	 input en,
	 input clk,
	 input rst,
	 output reg [SZE-1:0] out,
	 output [SZE-1:0] outbar
    );
	 
	 assign outbar = ~out;
	 //assign d = en ? in1 : in0;
	 
always @(posedge clk)
begin
	if(rst) begin
		out <= {SZE{1'b1}};
	end
	
	else begin
		out <= (en ? in1 : in0);
	end
	
end

endmodule
