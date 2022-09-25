`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:42:50 03/17/2019 
// Design Name: 
// Module Name:    ADC_32 
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
module ADC_32(
	input wire [31:0] A,
	input wire [31:0] B,
	input wire C0,
	output wire [32:0] res
    );

	wire [31:0] B_Notation;
	assign B_Notation =  B ^ {32{C0}};
	assign res = {1'b0, A} + {C0, B_Notation} + C0;
	
endmodule
