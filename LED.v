`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:32:21 06/18/2015 
// Design Name: 
// Module Name:    LED 
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
module LED
	(
		input [3:0] N,
		output reg [7:0] outLED
    );
 always @(*) begin
	 case(N)
	   0: outLED = 8'b00000011;
	   1: outLED = 8'b10011111;
	   2: outLED = 8'b00100101;
	   3: outLED = 8'b00001101;
	   4: outLED = 8'b10011001;
	   5: outLED = 8'b01001001;
	   6: outLED = 8'b01000001;
	   7: outLED = 8'b00011111;
	   8: outLED = 8'b00000001;
	   9: outLED = 8'b00011001;
	  /*10: outLED = 8'b11111110;
	  11: outLED = 8'b11111110;
	  12: outLED = 8'b11111110;
	  13: outLED = 8'b11111110;
	  14: outLED = 8'b11111110;
	  15: outLED = 8'b11111110;*/
	  default: outLED = 8'b11111110;
	endcase
end
 
endmodule
