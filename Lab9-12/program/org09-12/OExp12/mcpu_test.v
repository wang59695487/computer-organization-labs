`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:08:45 06/26/2020
// Design Name:   SOCMF
// Module Name:   Y:/Desktop/Lab9-12/program/Ex09-12/OExp12/mcpu_test.v
// Project Name:  OExp12
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SOCMF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mcpu_test;

	// Inputs
	reg clk_100mhz;
	reg [3:0] K_COL;
	reg [15:0] SW;
	reg RSTN;

	// Outputs
	wire CR;
	wire RDY;
	wire readn;
	wire [4:0] K_ROW;
	wire SEGCLK;
	wire SEGDT;
	wire SEGEN;
	wire SEGCLR;
	wire [3:0] AN;
	wire [7:0] SEGMENT;
	wire [7:0] LED;
	wire LEDCLK;
	wire LEDDT;
	wire LEDEN;
	wire LEDCLR;
	wire Buzzer;

	// Instantiate the Unit Under Test (UUT)
	SOCMF uut (
		.clk_100mhz(clk_100mhz), 
		.K_COL(K_COL), 
		.SW(SW), 
		.RSTN(RSTN), 
		.CR(CR), 
		.RDY(RDY), 
		.readn(readn), 
		.K_ROW(K_ROW), 
		.SEGCLK(SEGCLK), 
		.SEGDT(SEGDT), 
		.SEGEN(SEGEN), 
		.SEGCLR(SEGCLR), 
		.AN(AN), 
		.SEGMENT(SEGMENT), 
		.LED(LED), 
		.LEDCLK(LEDCLK), 
		.LEDDT(LEDDT), 
		.LEDEN(LEDEN), 
		.LEDCLR(LEDCLR), 
		.Buzzer(Buzzer)
	);

	initial begin
		// Initialize Inputs
		clk_100mhz = 0;
		K_COL = 0;
		SW = 0;
		RSTN = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

