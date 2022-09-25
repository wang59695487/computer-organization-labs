`timescale 1ns / 1ps
module   MUX4T1_32(input [1:0]s,
						 input [31:0]I0,
						 input [31:0]I1,
						 input [31:0]I2,
						 input [31:0]I3,						
						 output reg[31:0]o
						 );

		always@*
			case(s)
				3'b000: o = I0;
				3'b001: o = I1;
				3'b010: o = I2;
				3'b011: o = I3;
			endcase
			
endmodule
