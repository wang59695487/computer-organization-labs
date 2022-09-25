`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:14:21 05/14/2019 
// Design Name: 
// Module Name:    M_datapath 
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
module M_datapath(input clk,
                  input reset,
						input MIO_ready,
						input IorD,
						input IRWrite,
						input[1:0] RegDst,
						input RegWrite,
						input[1:0] MemtoReg,
						input ALUSrcA,
						input[1:0] ALUSrcB,
						input[1:0] PCSource,
						input PCWrite,
						input PCWriteCond,
						input Branch,
						input[2:0] ALU_operation,
						output[31:0] PC_Current,
						input[31:0] data2CPU,
						output[31:0]Inst,
						output[31:0]data_out,
						output[31:0]M_addr,
						output zero,
						output overflow
    );
	//MDR
	wire [31:0]MDR;
	//MUX4T1_5
	wire [4:0]Wt_addr;
	//MUX4T1_32
	wire [31:0]JR;
	wire [31:0]lui;
	wire [31:0]ALU_OP;
	wire [31:0]Wt_data;
	//Regs
	wire [31:0]rdata_A;
	//wire [31:0]rdata_B;
	//Ext_32
	wire [31:0]Imm_32;
	//MUX2T1_32
	wire [31:0]A;
	wire [31:0]B;
	//alu
	wire [31:0]res;
	//MUX 5
	wire [31:0]PC_4;
	//PC
	wire CE;
	wire [31:0]j$r;
	assign lui = {Inst[15:0],{16{1'b0}}};
	assign j$r = ALU_OP;
	assign JR= PC_Current;
	assign CE=MIO_ready&&(PCWrite||(PCWriteCond&&~(zero^Branch)));
	REG32 mdr(.clk(clk),
				 .rst(1'b0),
				 .CE(1'b1),
				 .Q(MDR),
				 .D(data2CPU));

	REG32 IR(.clk(clk),
				.rst(reset),
				.CE(IRWrite),
				.Q(Inst),
				.D(data2CPU));

	MUX4T1_5 MUX1(.s(RegDst),
					  .I0(Inst[20:16]),
					  .I1(Inst[15:11]),
					  .I2({1'b1,1'b1,1'b1,1'b1,1'b1}),
					  .o(Wt_addr));

	MUX4T1_32 MUX2(.s(MemtoReg),
						.I0(ALU_OP),
						.I1(MDR),
						.I2(lui),
						.I3(JR),
						.o(Wt_data));

	Regs U2(.clk(clk),
			  .rst(reset),
			  .R_addr_A(Inst[25:21]),
			  .R_addr_B(Inst[20:16]),
			  .Wt_addr(Wt_addr),
			  .Wt_data(Wt_data),
			  .L_S(RegWrite),
			  .rdata_A(rdata_A),
			  .rdata_B(data_out));

	Ext_32 Ext_imm16(.imm_16(Inst[15:0]),
						  .Imm_32(Imm_32));

	MUX2T1_32 MUX3(.s(ALUSrcA),
						.I0(PC_Current),
						.I1(rdata_A),
						.o(A));

	MUX4T1_32 MUX4(.s(ALUSrcB),
						.I0(data_out),
						.I1(32'h4),
						.I2(Imm_32),
						.I3({Imm_32[29:0], 2'b00}),
						.o(B));
	ALU U1(.A(A),
			 .B(B),
			 .ALU_operation(ALU_operation),
			 .zero(zero),
			 .res(res),
			 .overflow(overflow));

	MUX4T1_32 MUX5(.s(PCSource),
						.I0(res),
						.I1(ALU_OP),
						.I2({PC_Current[31:28],Inst[25:0],2'b00}),
						.I3(j$r),
						.o(PC_4));

	REG32 PC(.clk(clk),
				.rst(reset),
				.CE(CE),
				.D(PC_4),
				.Q(PC_Current));
				
	REG32 ALUOut(.clk(clk),
					 .rst(1'b0),
					 .CE(1'b1),
					 .D(res),
					 .Q(ALU_OP));

	MUX2T1_32 MUX6(.I0(PC_Current),
						.I1(ALU_OP),
						.o(M_addr),
						.s(IorD));

					 
				
	endmodule
