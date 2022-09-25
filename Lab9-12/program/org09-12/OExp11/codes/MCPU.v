`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:55:44 05/22/2018 
// Design Name: 
// Module Name:    MCPU 
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
module MCPU(input INT,
				input clk,
				input reset,
				input MIO_ready,
				input [31:0] Data_in,
				
				output mem_w,
				output [31:0] PC_out,
				output [31:0] inst_out,
				output [31:0] Data_out,
				output [31:0] Addr_out,
				output CPU_MIO,
				output [4:0] state
    );

wire zero, overflow,MemRead, MemWrite, IorD, IRWrite, RegWrite, ALUSrcA, PCWrite, PCWriteCond, Branch;
wire [1:0] RegDst;
wire [1:0] MemtoReg;
wire [1:0] ALUSrcB;
wire [1:0] PCSource;
wire [2:0] ALU_operation;

	 
MCtrl   m1(.clk(clk),
			  .reset(reset),
			  .zero(zero),
			  .overflow(overflow),
			  .MIO_ready(MIO_ready),
			  .Inst_in(inst_out[31:0]),
			  .MemRead(MemRead),
			  .MemWrite(MemWrite),
			  .CPU_MIO(CPU_MIO),
			  .IorD(IorD),
			  .IRWrite(IRWrite),
			  .RegWrite(RegWrite),
			  .ALUSrcA(ALUSrcA),
			  .PCWrite(PCWrite),
			  .PCWriteCond(PCWriteCond),
			  .Branch(Branch),
			  .RegDst(RegDst[1:0]),
			  .MemtoReg(MemtoReg[1:0]),
			  .ALUSrcB(ALUSrcB[1:0]),
			  .PCSource(PCSource[1:0]),
			  .ALU_operation(ALU_operation[2:0]),
			  .state_out(state[4:0])
			  );
			  
MDPath  m2(.clk(clk),
			  .reset(reset),
			  .zero(zero),
			  .overflow(overflow),
			  .MIO_ready(MIO_ready),
			  .IorD(IorD),
			  .IRWrite(IRWrite),
			  .RegWrite(RegWrite),
			  .ALUSrcA(ALUSrcA),
			  .PCWrite(PCWrite),
			  .PCWriteCond(PCWriteCond),
			  .Branch(Branch),
			  .RegDst(RegDst[1:0]),
			  .MemtoReg(MemtoReg[1:0]),
			  .ALUSrcB(ALUSrcB[1:0]),
			  .PCSource(PCSource[1:0]),
			  .ALU_operation(ALU_operation[2:0]),
			  .data2CPU(Data_in[31:0]),
			  .PC_Current(PC_out[31:0]),
			  .Inst(inst_out[31:0]),
			  .data_out(Data_out[31:0]),
			  .M_addr(Addr_out[31:0])
			  );
			  
assign mem_w = (~MemRead) && MemWrite;	  


endmodule
