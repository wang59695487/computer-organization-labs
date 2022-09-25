`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:44:19 05/28/2019
// Design Name:   Regs
// Module Name:   E:/OExp10-MDP/reg_test.v
// Project Name:  OExp10-MDP
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Regs
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module reg_test;

	// Inputs
	reg clk;
	reg rst;
	reg L_S;
	reg [4:0] R_addr_A;
	reg [4:0] R_addr_B;
	reg [4:0] Wt_addr;
	reg [31:0] Wt_data;

	// Outputs
	wire [31:0] rdata_A;
	wire [31:0] rdata_B;

	// Instantiate the Unit Under Test (UUT)
	Regs uut (
		.clk(clk), 
		.rst(rst), 
		.L_S(L_S), 
		.R_addr_A(R_addr_A), 
		.R_addr_B(R_addr_B), 
		.Wt_addr(Wt_addr), 
		.Wt_data(Wt_data), 
		.rdata_A(rdata_A), 
		.rdata_B(rdata_B)
	);

	initial begin
		// Initialize Inputs
		rst = 0;
		L_S = 0;
		R_addr_A = 0;
		R_addr_B = 0;
		Wt_addr = 0;
		Wt_data = 0;
		// Add stimulus here
		#20;
		L_S=1;
		Wt_addr=5;
		Wt_data=32'h12345678;
		#40;
		Wt_addr=6;
		Wt_data=32'h87654321;
		#40;
		L_S=0;
		Wt_addr=0;
		R_addr_A=5;
		R_addr_B=6;
		#40;
		rst=1;
		#40;
		rst=0;
		#40;
	end
	
	initial begin
		clk=0;
		forever #10 clk = ~clk;
	end

      
endmodule

