`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:19:32 02/26/2019 
// Design Name: 
// Module Name:    MUX8T1_32 
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
module MUX8T1_32(
	input wire [2:0] s,
	input wire [31:0] I0,
	input wire [31:0] I1,
	input wire [31:0] I2,
	input wire [31:0] I3,
	input wire [31:0] I4,
	input wire [31:0] I5,
	input wire [31:0] I6,
	input wire [31:0] I7,
	output reg [31:0] o
    );
	
	always @(*) begin
		case (s)
			3'b000: begin o <= I0; end
			3'b001: begin o <= I1; end
			3'b010: begin o <= I2; end
			3'b011: begin o <= I3; end
			3'b100: begin o <= I4; end
			3'b101: begin o <= I5; end
			3'b110: begin o <= I6; end
			3'b111: begin o <= I7; end
		endcase
	end

endmodule
