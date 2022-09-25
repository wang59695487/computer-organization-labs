`timescale 1ns / 1ps

module MDPath(input clk,
				input reset,
				input MIO_ready,
				input PCWrite,
				input PCWriteCond,
				input Branch,
				input [1:0] PCSource,
				input IorD,
				input [2:0] ALU_operation,
				input [1:0] ALUSrcB,
				input ALUSrcA,
				input RegWrite,
				input [1:0] RegDst,
				input IRWrite,
				input [1:0] MemtoReg,
				input [31:0] data2CPU,

				output [31:0] PC_Current,
				output [31:0] M_addr,
				output zero,
				output overflow,
				output [31:0] data_out,
				output [31:0] Inst
				);

wire [31:0] MDR;
wire [4:0] Wt_addr;
wire [31:0] Wt_data;
wire [31:0] ALU_Out;
wire [31:0] rdata_A;
wire [31:0] rdata_B;
wire [31:0] Imm_32;
wire [31:0] A;
wire [31:0] B;
wire [31:0] res;
wire [31:0] address;
wire choose;


VCC emm(.P(V5));
GND haa(.G(N0));

REG32	m0(.clk(clk),
		   .rst(reset),
		   .CE(IRWrite),
		   .D(data2CPU),
		   .Q(Inst)
		   );
REG32	m1(.clk(clk),
		   .rst(N0),
		   .CE(V5),
		   .D(data2CPU),
		   .Q(MDR)
		   );

MUX4T1_5 m2(.s(RegDst),
		      .I0(Inst[20:16]),
		      .I1(Inst[15:11]),
		      .o(Wt_addr)
		      );

MUX4T1_32 m3(.s(MemtoReg),
		       .I0(ALU_Out),
		       .I1(MDR),
		       .o(Wt_data)
		       );

Regs U2(.clk(clk),
	     .rst(reset),
  	     .R_addr_A(Inst[25:21]),
	     .R_addr_B(Inst[20:16]),
	     .Wt_addr(Wt_addr),
	     .Wt_data(Wt_data),
	     .rdata_A(rdata_A),
	     .rdata_B(data_out),
	     .L_S(RegWrite)
	     );

Ext_32	m4(.imm_16(Inst[15:0]),
		      .Imm_32(Imm_32)
		   );

MUX2T1_32 m5(.s(ALUSrcA),
			    .I0(PC_Current),
			    .I1(rdata_A),
			    .o(A)
			    );

MUX4T1_32 m6(.s(ALUSrcB[1:0]),
			    .I0(data_out[31:0]),
			    .I1(32'h4),
			    .I2(Imm_32),
			    .I3({Imm_32[29:0],2'b00}),
			    .o(B)
			    );

ALU 	U1(.ALU_Ctr(ALU_operation),
		   .A(A),
		   .B(B),
		   .zero(zero),
		   .res(res),
		   .overflow(overflow)
		   );

REG32	m7(.clk(clk),
		   .rst(N0),
		   .CE(V5),
		   .D(res),
		   .Q(ALU_Out)
		   );

MUX2T1_32 m8(.s(IorD),
			    .I0(PC_Current),
			    .I1(ALU_Out),
		   	 .o(M_addr)
			    );
 
MUX4T1_32 m9(.s(PCSource),
			    .I0(res),
			    .I1(ALU_Out),
			    .I2({PC_Current[31:28],Inst[25:0], N0,N0}),
			    .o(address)
			 );

assign choose = MIO_ready && (PCWrite || (PCWriteCond && zero && Branch));
REG32	t0(.clk(clk),
		   .rst(reset),
		   .CE(choose),
		   .D(address),
		   .Q(PC_Current)
		   );

endmodule
