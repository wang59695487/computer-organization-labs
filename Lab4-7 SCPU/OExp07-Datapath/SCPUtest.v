// Verilog test fixture created from schematic D:\ise files\OExp05-Datapath\SCPU.sch - Tue Apr 09 19:57:01 2019

`timescale 1ns / 1ps

module SCPU_SCPU_sch_tb();

// Inputs
   reg MIO_ready;
   reg [31:0] inst_in;
   reg [31:0] Data_in;
   reg reset;
   reg clk;
   reg INT;

// Output
   wire mem_w;
   wire CPU_MIO;
   wire [31:0] PC_out;
   wire [31:0] Addr_out;
   wire [31:0] Data_out;

// Bidirs

// Instantiate the UUT
   SCPU UUT (
		.mem_w(mem_w), 
		.CPU_MIO(CPU_MIO), 
		.MIO_ready(MIO_ready), 
		.inst_in(inst_in), 
		.Data_in(Data_in), 
		.reset(reset), 
		.clk(clk), 
		.PC_out(PC_out), 
		.Addr_out(Addr_out), 
		.Data_out(Data_out), 
		.INT(INT)
   );
// Initialize Inputs
       initial begin
		MIO_ready = 1;
		inst_in = 0;
		Data_in = 0;
		reset = 0;
		clk = 0;
		INT = 0;

		end
		
		always begin
		inst_in = 32'b00100000001000100000000000000001;
		clk=1; #20;
		clk=0; #20;
		inst_in = 32'b00111100000000110000000000000001;
		end
endmodule
