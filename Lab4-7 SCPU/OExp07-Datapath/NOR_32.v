`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:14:25 03/17/2019 
// Design Name: 
// Module Name:    NOR_32 
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
module NOR_32(
	input wire [31:0] A,
	input wire [31:0] B,
	output wire [31:0] res
    );

	assign res = ~(A | B);

endmodule
