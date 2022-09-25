`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:36:48 04/30/2019 
// Design Name: 
// Module Name:    SCPU_ctrl 
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
module SCPU_ctrl(
	input [5:0] OPcode,
	input [5:0] Fun,
	input MIO_ready,
	input zero,
	output reg RegDst,
	output reg ALUSrc_B,
	output reg [1:0] DatatoReg,
	output reg Jal,
	output reg [1:0] Branch,
	output reg RegWrite,
	output reg mem_w,
	output reg [2:0] ALU_Control,
	output reg CPU_MIO
);

	always @(*) begin
		RegDst = 0;
		ALUSrc_B = 0;
		DatatoReg = 2'b0;
		Jal = 0;
		Branch = 0;
		RegWrite = 0;
		mem_w = 0;
		CPU_MIO = 0;
		case(OPcode)
			6'b000000: begin
					RegDst = 1;
					RegWrite = 1;
					case(Fun)
						6'b100100: ALU_Control = 3'b000; // and
						6'b100101: ALU_Control = 3'b001; // or
						6'b100000: ALU_Control = 3'b010; // add
						6'b100010: ALU_Control = 3'b110; // sub
						6'b101010: ALU_Control = 3'b111; // slt
						6'b100111: ALU_Control = 3'b100; // nor
						6'b000010: ALU_Control = 3'b101;// srl
						6'b010110: ALU_Control = 3'b011; // xor
						6'b001000: begin
							ALU_Control = 3'b000;
							Branch = 2'b11; 
							Jal=1;
							RegWrite = 0;
							end// jr
						6'b001001:begin
							ALU_Control = 3'b010;
							Branch = 2'b11;
							DatatoReg = 2'b11;
							Jal=1;
							end//jalr
						default: ALU_Control = 3'bx;
					endcase
				end
			6'b001000: begin // addi
				ALU_Control = 3'b010;
				ALUSrc_B = 1;
				RegWrite = 1;
				end
			6'b001100: begin // andi
				ALU_Control = 3'b000;
				ALUSrc_B = 1;
				RegWrite = 1;
				end
			6'b001101: begin // ori
				ALU_Control = 3'b001;
				ALUSrc_B = 1;
				RegWrite = 1;
				end
			6'b001110: begin // xori
				ALU_Control = 3'b011;
				ALUSrc_B = 1;
				RegWrite = 1;
				end
			6'b001111: begin // lui
				ALU_Control = 3'b010;
				DatatoReg = 2'b10;
				RegWrite = 1;
				end
			6'b100011: begin // lw
				ALU_Control = 3'b010;
				ALUSrc_B = 1;
				DatatoReg = 2'b01;
				RegWrite = 1;
				end
			6'b101011: begin // sw
				ALU_Control = 3'b010;
				ALUSrc_B = 1;
				mem_w = 1;
				RegDst = 1;
				end
			6'b000100: begin // beq
				ALU_Control = 3'b110;
				Branch = {1'b0, zero};
				end
			6'b000101: begin // bne
				ALU_Control = 3'b110;
				Branch = {1'b0, ~zero};
				end
			6'b010100: begin // slti
				ALU_Control = 3'b111;
				ALUSrc_B = 1;
				RegWrite = 1;
				end
			6'b000010: begin // j
				Branch = 2'b10;
				end
			6'b000011: begin // jal
				ALU_Control = 3'b010;
				DatatoReg = 2'b11;
				Jal = 1;
				Branch = 2'b10;
				RegWrite = 1;
				end
			default: ALU_Control = 3'b010;
		endcase
	end
	
endmodule
