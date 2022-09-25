`timescale 1ns / 1ps

parameter IF = 5'b00000, ID = 5'b00001, Ex_Mem = 5'b00010,Ex_R = 5'b00011, Ex_I = 5'b00100, Ex_Lui = 5'b00101;
parameter Ex_Beq = 5'b00110, Ex_Bne = 5'b00111, Ex_Jal = 5'b01000,Ex_Jr = 5'b01001, Ex_J = 5'b01010, Ex_Jalr = 5'b01011;
parameter Mem_RD = 5'b01100, Mem_WD = 5'b01101, R_WB = 5'b01110,I_WB = 5'b01111, Lw_WB = 5'b10000, Error = 5'b11111;

`define CPU_ctrl_signals {PCWrite, PCWriteCond, IorD, mem_w, IRWrite, MemtoReg, PCSource, ALUSrcA, ALUSrcB, RegWrite, RegDst, Branch, CPU_MIO}
module   MCtrl(input  clk,
					input  reset,
					input  [31:0] Inst_in,
					input  zero,
					input  overflow,
					input  MIO_ready,
					output reg mem_w,
					output reg[2:0]ALU_operation,
					output [4:0]state_out,
					
					output reg CPU_MIO,
					output reg IorD,
					output reg IRWrite,
					output reg [1:0]RegDst,
					output reg RegWrite,
					output reg [1:0]MemtoReg,
					output reg [1:0]ALUSrcA,
					output reg [2:0]ALUSrcB,
					output reg [1:0]PCSource,
					output reg PCWrite,
					output reg PCWriteCond,
					output reg Branch
					);
reg [4:0] state;
assign state_out = state;
always @(posedge clk or posedge reset)begin
	if (reset) 
		state <= IF;
	else
		case(state)
		IF: if(MIO_ready) state <= ID;
		    else state <= IF;
		ID: case(Inst_in[31:26])
			6'b000000:	begin
							if (Inst_in[5:0] == 6'h8)
								 state <= Ex_Jr;
							else if(Inst_in[5:0] ==6'h9)
								 state <= Ex_Jalr;
							else state <= Ex_R; //R operation
							end
			6'b100011:	state <= Ex_Mem; //Lw
			6'b101011:	state <= Ex_Mem; //Sw
			//6'b001000:	state <= Ex_Jr;
			//6'b001001:	state <= Ex_Jalr;
			6'b000100:	state <= Ex_Beq; //beq
			6'b000101:	state <= Ex_Bne; //bne
			6'hA, 6'h8, 6'hC, 6'hD, 6'hE:	state <= Ex_I; //I operation
			6'hF:	state <= Ex_Lui; //lui
			6'h3:	state <= Ex_Jal;
			6'h2: 	state <= Ex_J;
			default: state <= Error;
			endcase
		Ex_Mem: case(Inst_in[31:26])
				6'b100011:	state <= Mem_RD;
				6'b101011:	state <= Mem_WD;
				default: state <= Error;
				endcase
		Mem_RD: state <= Lw_WB;
		Ex_R:	state <= R_WB;
		Ex_I:	state <= I_WB;
		Ex_Lui:	state <= IF;
		Lw_WB:	state <= IF;
		Mem_WD: state <= IF;
		R_WB:	state <= IF;
		I_WB:	state <= IF;
		Ex_Beq: state <= IF;
		Ex_Bne:	state <= IF;
		Ex_Jal:	state <= IF;
		Ex_Jr:	state <= IF;
		Ex_J:	state <= IF;
		Ex_Jalr:state <= IF;
		Error:	state <= Error;
		default: state <= Error;
		endcase
end

always @ *begin
	case(state)	//state
		IF:		begin `CPU_ctrl_signals = 19'b10001_00_00_00_001_0_00_00; ALU_operation = 3'b010; end
		ID:		begin `CPU_ctrl_signals = 19'b00000_00_00_00_011_0_00_00; ALU_operation = 3'b010; end
		Ex_Mem: 	begin `CPU_ctrl_signals = 19'b00000_00_00_01_010_0_00_00; ALU_operation = 3'b010; end
		Ex_R:		begin `CPU_ctrl_signals = 19'b00000_00_00_01_000_0_00_00;
					case(Inst_in[5:0])
					6'b100000:	ALU_operation = 3'b010; //add
					6'b100010:	ALU_operation = 3'b110; //sub
					6'b100100:	ALU_operation = 3'b000; //and
					6'b100101:	ALU_operation = 3'b001; //or
					6'b101010:	ALU_operation = 3'b111; //slt
					6'b100111:	ALU_operation = 3'b100; //nor
					6'b100110:	ALU_operation = 3'b011; //xor
					6'b000010:	begin `CPU_ctrl_signals = 19'b00000_00_00_10_000_0_00_00; ALU_operation = 3'b101; end//srl
					default:	ALU_operation = 3'b010;
					endcase
					end
		Ex_I:		case(Inst_in[31:26])
					6'hA: begin `CPU_ctrl_signals = 19'b00000_00_00_01_010_0_00_00; ALU_operation = 3'b111; end //slti
					6'h8: begin `CPU_ctrl_signals = 19'b00000_00_00_01_010_0_00_00; ALU_operation = 3'b010; end //addi
					6'hC: begin `CPU_ctrl_signals = 19'b00000_00_00_01_100_0_00_00; ALU_operation = 3'b000; end //andi
					6'hD: begin `CPU_ctrl_signals = 19'b00000_00_00_01_100_0_00_00; ALU_operation = 3'b001; end //ori
					6'hE: begin `CPU_ctrl_signals = 19'b00000_00_00_01_100_0_00_00; ALU_operation = 3'b011; end //xori
					endcase
		Ex_Lui: 	begin `CPU_ctrl_signals = 19'b00000_10_00_00_000_1_00_00; ALU_operation = 3'b010; end
		Ex_Beq: 	begin `CPU_ctrl_signals = 19'b01000_00_01_01_000_0_00_10; ALU_operation = 3'b110; end
		Ex_Bne: 	begin `CPU_ctrl_signals = 19'b01000_00_01_01_000_0_00_00; ALU_operation = 3'b110; end 
		Ex_Jal: 	begin `CPU_ctrl_signals = 19'b10010_11_10_00_000_1_10_00; ALU_operation = 3'b010; end 
		Ex_Jr:	begin `CPU_ctrl_signals = 19'b10000_00_11_01_000_0_00_00; ALU_operation = 3'b010; end
		Ex_J:		begin `CPU_ctrl_signals = 19'b10000_00_10_00_000_0_00_00; ALU_operation = 3'b010; end
		Ex_Jalr:	begin `CPU_ctrl_signals = 19'b10010_11_11_00_000_1_10_00; ALU_operation = 3'b010; end
		Mem_RD:	begin `CPU_ctrl_signals = 19'b00100_00_00_00_000_0_00_01; ALU_operation = 3'b010; end
		Mem_WD:	begin `CPU_ctrl_signals = 19'b00110_00_00_00_000_0_00_01; ALU_operation = 3'b010; end 
		R_WB:		begin `CPU_ctrl_signals = 19'b00000_00_00_00_000_1_01_00; ALU_operation = 3'b010; end
		I_WB:		begin `CPU_ctrl_signals = 19'b00000_00_00_00_000_1_00_00; ALU_operation = 3'b010; end
		Lw_WB:	begin `CPU_ctrl_signals = 19'b00000_01_00_00_000_1_00_00; ALU_operation = 3'b010; end
	endcase
end
endmodule