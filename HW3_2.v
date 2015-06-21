`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:41:37 06/21/2015 
// Design Name: 
// Module Name:    HW3_2 
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
module HW3_2 #(parameter SZE = 8)
	(
	input [3:0] op,
	input CLK,
	input RST,
	input sinR,
	input sinL,
	input [SZE-1:0] Din,
	output reg[SZE-1:0] Dout,
	output reg soutR,
	output reg soutL
	);

	always @(posedge CLK)
	begin
		if(RST) begin
			Dout <= {SZE{1'b0}};
		end
		else begin
			case(op)
			//load Din
			0: Dout <= Din; 
			
			//load serial right
			1: begin 
					Dout <= {Dout[SZE-2:0], sinR}; 
					soutL <= Dout[SZE-1];
				end
			
			//load serial left			
			2: begin 
					Dout <= {sinL, Dout[SZE-1:1]}; 
					soutR <= Dout[0];
				end
			
			//logical shift left			
			3: Dout <= {Dout[SZE-2:0], 1'b0};
			
			//arithmetic shift right
			4: begin 
					if(Dout[SZE-1] == 1'b1)
						Dout <= {1'b1, Dout[SZE-1:1]}; 
					else
						Dout <= {1'b0, Dout[SZE-1:1]};
				end 
				
			//logical shift right	
			5: Dout <= {1'b0, Dout[SZE-1:1]};

			//rotate left
			6: Dout <= {Dout[SZE-2:0],Dout[SZE-1]};
			
			//rotate right
			7: Dout <= {Dout[0],Dout[SZE-1:1]};
			
			default: Dout <= Dout;
			
			endcase
		end	
	end
	

endmodule
