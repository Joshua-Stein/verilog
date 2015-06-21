`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:06:43 06/16/2015 
// Design Name: 
// Module Name:    dff 
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
module dff #(parameter SZE=4)
	(
    input clk,
    input  rst,
    input [SZE-1:0] data,
    output reg[SZE-1:0] q,
    output  [SZE-1:0]  qnot
    );

//reg [SZE-1:0]	q;

assign qnot = ~q;

always @(posedge clk or posedge rst)
begin
	if(rst) 
		q <= {SZE{1'b1}};
	else  
		q <= data;
end

endmodule