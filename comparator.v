`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:57:47 06/18/2015 
// Design Name: 
// Module Name:    comparator 
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
module comparator #(parameter SZE = 2)
( 
input [SZE-1:0] in0 , 
input [SZE-1:0] in1 ,
output reg EQ ,
output reg GTR ,
output reg LR 
);

initial begin

  EQ = 0;
  LR = 0;
  GTR = 0;
	
end
	
always @ (in0 or in1) begin
 if (in0 < in1) 
  LR = 1;

  else if ( in0 == in1 )
  EQ = 1;
  
  else 
  GTR = 1;
end
 

endmodule 