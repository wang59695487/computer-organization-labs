`timescale 1ns / 1ps
module alu(
	input [2:0] ALU_Ctr,
	input [31:0] A,
	input [31:0] B,
	output [31:0] res,
	output Co,
	output zero,
	output overflow
    );
	 
	wire [31:0] res_and;
	wire [31:0] res_or;
	wire [31:0] res_ADC;
	wire [31:0] res_xor;
	wire [31:0] res_nor;
	wire [31:0] res_srl;
	and32 M0(.A(A), .B(B), .res(res_and));
	or32 M1(.A(A), .B(B), .res(res_or));
	ABC32 M2(.A(A), .B(B), .sub(ALU_Ctr[2]), .Co(Co), .S(res_ADC));
	xor32 M3(.A(A), .B(B), .res(res_xor));
	nor32 M4(.A(A), .B(B), .res(res_nor));
	srl32 M5(.A(A), .B(B), .res(res_srl));
	
	MUX8T1_32 MUX(
		.I0(res_and), 
		.I1(res_or),
		.I2(res_ADC),
		.I3(res_xor),
		.I4(res_nor),
		.I5(res_srl),
		.I6(res_ADC),
		.I7({{31{1'b0}}, res_ADC[31]}),
		.s(ALU_Ctr),
		.o(res)
	);
	or_bit_32 M6(.A(res), .o(zero));
endmodule
