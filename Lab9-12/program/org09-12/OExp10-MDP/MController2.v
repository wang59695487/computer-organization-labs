`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:01:47 06/07/2018 
// Design Name: 
// Module Name:    MController 
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
module MController(
 input clk,
 input reset,
 input [31:0] Inst_in,
 input zero,
 input overflow,
 input MIO_ready,
 output reg MemRead,
 output reg MemWrite,
 output reg [2:0] ALU_operation,
 output [4:0] state_out,
 output reg CPU_MIO,
 output reg IorD,
 output reg IRWrite,
 output reg [1:0] RegDst,
 output reg RegWrite,
 output reg [1:0] MemtoReg,
 output reg ALUSrcA,
 output reg [1:0] ALUSrcB,
 output reg [1:0] PCSource,
 output reg PCWrite,
 output reg PCWriteCond,
 output reg Branch
    );
 		parameter value0 = 20'b1001_0100_0000_1000_0000;
		parameter value1 = 20'b0001_0000_0001_1000_0000;
		parameter value2 = 20'b0000_0000_0011_0000_0000;
		parameter value3 = 20'b0011_0000_0000_0000_0001;
		parameter value4 = 20'b0000_0001_0000_0100_0000;
		parameter value5 = 20'b0010_1000_0000_0000_0001;
		parameter value6 = 20'b0000_0000_0010_0000_0100;
		parameter value7 = 20'b0000_0000_0000_0101_0000;
		parameter value8 = 20'b0100_0000_0110_0000_1010;
		parameter value9 = 20'b1000_0000_1000_1000_0000;

		`define Datapath_signals {PCWrite, PCWriteCond, IorD, MemRead, MemWrite, IRWrite, MemtoReg, PCSource, ALUSrcA, ALUSrcB, RegWrite, RegDst, Branch, ALUop, CPU_MIO}

		parameter IF = 4'b0000, ID = 4'b0001, Mem_Ex = 4'b0010, Mem_RD = 4'b0011;
		parameter LW_WB = 4'b0100, Mem_W = 4'b0101, R_Exc = 4'b0110, R_WB = 4'b0111;
		parameter Beq_Exc = 4'b1000, J = 4'b1001, Error = 4'b1111;

		parameter AND = 3'b000, OR = 3'b001, ADD = 3'B010;
		parameter SUB = 3'b110, NOR = 3'b100, SLT = 3'B111;
		parameter XOR = 3'b011, SRL = 3'b101;

		reg [3:0]state;
		reg [1:0]ALUop;

		always @ (posedge clk or posedge reset) begin
			if(reset==1) state <= IF;
			else
				case(state)
					IF:		if(MIO_ready) state <= ID;
								else          state <= IF;
					ID:		case(Inst_in[31:26])
									6'b000000: state <= R_Exc;		// R-type OP
									6'b100011: state <= Mem_Ex;   // Lw
									6'b101011: state <= Mem_Ex;	// Sw
									6'b000100: state <= Beq_Exc;	// Beq
									6'b000010: state <= J;			// J
									default:   state <= Error;
								endcase
					Mem_Ex:  case(Inst_in[31:26])
									6'b100011: state <= Mem_RD;   // Lw
									6'b101011: state <= Mem_W;	// Sw
								endcase
					Mem_RD:  state <= LW_WB;
					LW_WB:   state <= IF;
					Mem_W:   state <= IF;
					R_Exc:	state <= R_WB;
					R_WB:    state <= IF;
					Beq_Exc: state <= IF;
					J:       state <= IF;
					Error:   state <= Error;
					default: state <= Error;
				endcase
		end

		always @ * begin
			case(state)
				IF:		`Datapath_signals = value0;
				ID:      `Datapath_signals = value1;
				Mem_Ex:  `Datapath_signals = value2;
				Mem_RD:  `Datapath_signals = value3;
				LW_WB:   `Datapath_signals = value4;
				Mem_W:   `Datapath_signals = value5;
				R_Exc:   `Datapath_signals = value6;
				R_WB:    `Datapath_signals = value7;
				Beq_Exc: `Datapath_signals = value8;
				J:       `Datapath_signals = value9;
				default: `Datapath_signals = value0;
			endcase
		end

		always @ * begin
			case(ALUop)
				2'b00: ALU_operation = 3'b010;
				2'b01: ALU_operation = 3'b110;
				2'b10:
					case(Inst_in[5:0])
						6'b100000: ALU_operation = ADD;
						6'b100010: ALU_operation = SUB;
						6'b100100: ALU_operation = AND;
						6'b100101: ALU_operation = OR;
						6'b100111: ALU_operation = NOR;
						6'b101010: ALU_operation = SLT;
						6'b000010: ALU_operation = SRL;
						6'b000000: ALU_operation = XOR;
						default:   ALU_operation = ADD;
					endcase
				2'b11: ALU_operation = SLT;	// slti
			endcase
		end

endmodule
