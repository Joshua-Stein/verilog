`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:29:30 06/16/2015 
// Design Name: 
// Module Name:    dff1 
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
module dff #(parameter SZE=1)
	(
    input clk,
    input  rst,
    input  data,
    output reg q,
    output    qnot
    );


assign qnot = ~q;

always @(posedge clk or posedge rst)
begin
	if(rst) 
		q <= {SZE{1'b1}};
	else  
		q <= data;
end
endmodule
