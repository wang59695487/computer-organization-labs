`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:41:05 06/25/2020
// Design Name:   M_datapath
// Module Name:   Y:/Desktop/Lab9-12/program/OExp10-MDP/DataPath_test.v
// Project Name:  OExp10-MDP
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: M_datapath
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module DataPath_test;

	// Inputs
	reg clk;
	reg reset;
	reg MIO_ready;
	reg IorD;
	reg IRWrite;
	reg [1:0] RegDst;
	reg RegWrite;
	reg [1:0] MemtoReg;
	reg ALUSrcA;
	reg [1:0] ALUSrcB;
	reg [1:0] PCSource;
	reg PCWrite;
	reg PCWriteCond;
	reg Branch;
	reg [2:0] ALU_operation;
	reg [31:0] data2CPU;

	// Outputs
	wire [31:0] PC_Current;
	wire [31:0] Inst;
	wire [31:0] data_out;
	wire [31:0] M_addr;
	wire zero;
	wire overflow;

	// Instantiate the Unit Under Test (UUT)
	M_datapath uut (
		.clk(clk), 
		.reset(reset), 
		.MIO_ready(MIO_ready), 
		.IorD(IorD), 
		.IRWrite(IRWrite), 
		.RegDst(RegDst), 
		.RegWrite(RegWrite), 
		.MemtoReg(MemtoReg), 
		.ALUSrcA(ALUSrcA), 
		.ALUSrcB(ALUSrcB), 
		.PCSource(PCSource), 
		.PCWrite(PCWrite), 
		.PCWriteCond(PCWriteCond), 
		.Branch(Branch), 
		.ALU_operation(ALU_operation), 
		.PC_Current(PC_Current), 
		.data2CPU(data2CPU), 
		.Inst(Inst), 
		.data_out(data_out), 
		.M_addr(M_addr), 
		.zero(zero), 
		.overflow(overflow)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		MIO_ready = 0;
		IorD = 0;
		IRWrite = 0;
		RegDst = 0;
		RegWrite = 0;
		MemtoReg = 0;
		ALUSrcA = 0;
		ALUSrcB = 0;
		PCSource = 0;
		PCWrite = 0;
		PCWriteCond = 0;
		Branch = 0;
		ALU_operation = 0;
		data2CPU = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

