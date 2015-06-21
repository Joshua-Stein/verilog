`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:08:14 06/16/2015 
// Design Name: 
// Module Name:    design 
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

//`include "dff.v"

module dfftop #(parameter SZE=1)
	(
    input  clk,
    input  rst,
    output [3:0] q,
    output  [3:0]  qnot
    );

//module design(
 //   );
	 
	reg  g1, g2, g3;
	//wire [3:0] q, qnot;
	//reg clk, rst;
	
	dff #(.SZE(1)) q0(.clk(clk), .rst(rst), .data(g3), .q(q[0]), .qnot(qnot[0]));
	dff #(.SZE(1)) q1(.clk(clk), .rst(rst), .data(q[0]), .q(q[1]), .qnot(qnot[1]));
	dff #(.SZE(1)) q2(.clk(clk), .rst(rst), .data(q[1]), .q(q[2]), .qnot(qnot[2]));
	dff #(.SZE(1)) q3(.clk(clk), .rst(rst), .data(q[2]), .q(q[3]), .qnot(qnot[3]));
	
/*	initial begin
		clk = 0;
		rst = 0;
	end*/
	
//	always begin
//		#1 clk = ~clk;
//	end
	
	always @(*)
	begin
		g1 = q[0] & q[1] & q[2];
		g2 = g1 ^ q[3];
		g3 = ~(g1 ^ g2);
		
		//data[0] = g3;
		
   end			

endmodule

