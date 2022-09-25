`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:34:07 03/17/2019 
// Design Name: 
// Module Name:    alu 
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
module ALU(
	input wire [2:0] ALU_operation,
	input wire [31:0] A,
	input wire [31:0] B,
	output wire [31:0] res,
	output wire zero,
	output wire overflow
    );
	 
	wire [32:0] res_adc;
	wire [31:0] res_and, res_or, res_xor, res_nor, res_srl;
	 
	MUX8T1_32 MUX(
		.s(ALU_operation),
		.I0(res_and),
		.I1(res_or),
		.I2(res_adc[31:0]),
		.I3(res_xor),
		.I4(res_nor),
		.I5(res_srl),
		.I6(res_adc[31:0]),
		.I7({31'b0, res_adc[32]}),
		.o(res)
	);
	 
	ADC_32 ADC(.A(A), .B(B), .res(res_adc), .C0(ALU_operation[2]));
	AND_32 AND(.A(A), .B(B), .res(res_and));
	OR_32   OR(.A(A), .B(B), .res( res_or));
	XOR_32 XOR(.A(A), .B(B), .res(res_xor));
	NOR_32 NOR(.A(A), .B(B), .res(res_nor));
	SRL_32 SRL(.A(A), .B(B), .res(res_srl));
	assign zero = res == 32'h0000_0000;

endmodule
