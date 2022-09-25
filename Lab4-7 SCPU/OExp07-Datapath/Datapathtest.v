// Verilog test fixture created from schematic D:\ise files\OExp05-Datapath\Data_path.sch - Tue Apr 09 19:46:20 2019

`timescale 1ns / 1ps

module Data_path_Data_path_sch_tb();

// Inputs
   reg clk;
   reg rst;
   reg Jump;
   reg Branch;
   reg [2:0] ALU_Control;
   reg ALUSrc_B;
   reg RegWrite;
   reg RegDst;
   reg [25:0] inst_field;
   reg [31:0] Data_in;
   reg MemtoReg;

// Output
   wire [31:0] PC_out;
   wire [31:0] ALU_out;
   wire [31:0] Data_out;

// Bidirs

// Instantiate the UUT
   Data_path UUT (
		.clk(clk), 
		.rst(rst), 
		.PC_out(PC_out), 
		.Jump(Jump), 
		.ALU_out(ALU_out), 
		.Branch(Branch), 
		.ALU_Control(ALU_Control), 
		.Data_out(Data_out), 
		.ALUSrc_B(ALUSrc_B), 
		.RegWrite(RegWrite), 
		.RegDst(RegDst), 
		.inst_field(inst_field), 
		.Data_in(Data_in), 
		.MemtoReg(MemtoReg)
   );
// Initialize Inputs
   `ifdef auto_init
       initial begin
		clk = 0;
		rst = 0;
		Jump = 0;
		Branch = 0;
		ALU_Control = 0;
		ALUSrc_B = 0;
		RegWrite = 0;
		RegDst = 0;
		inst_field = 0;
		Data_in = 0;
		MemtoReg = 0;
   `endif
endmodule
