`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:12:00 05/14/2019 
// Design Name: 
// Module Name:    ALU 
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
	input [31:0]A,
	input [31:0]B,
	input [2:0]ALU_operation,
	output zero,
	output [31:0]res,
	output overflow
    );
	 wire [31:0]And,Or,add,sub,Xor,B_Xor,Nor,srl,slt,So;
	 wire [31:0]res;
	 wire [32:0]S;
	 
	 SignalExt_32 U3(.S(ALU_operation[2]),.So(So));
	 xor32 U4(.A(B),.B(So),.res(B_Xor));
	 and32 U1(.A(A),.B(B),.res(And));
	 or32 U2(.A(A),.B(B),.res(Or));
	 ADC32 U5(.A(A),.B(B_Xor),.C0(ALU_operation[2]),.S(S));
	 xor32 U6(.A(A),.B(B),.res(Xor));
	 nor32 U7(.A(A),.B(B),.res(Nor));
	 srl32 U8(.A(A),.B(B),.res(srl));
	 
	 assign slt={31'b0,S[32]};
	 assign sub=S[31:0];
	 assign add=S[31:0];
	 
	 MUX8T1_32 U9(
		.s(ALU_operation[2:0]),
		.I0(And),
		.I1(Or),
		.I2(add),
		.I3(Xor),
		.I4(Nor),
		.I5(srl),
		.I6(sub),
		.I7(slt),
		.o(res));
		
	or_bit_32 U10(.A(res),.o(zero));
endmodule
