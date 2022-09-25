// Verilog test fixture created from schematic E:\OExp10-MDP\ALU.sch - Tue May 28 16:35:34 2019

`timescale 1ns / 1ps

module ALU_ALU_sch_tb();

// Inputs
   reg [31:0] A;
   reg [31:0] B;
   reg [2:0] ALU_operation;

// Output
   wire [31:0] res;
   wire overflow;
   wire zero;

// Bidirs

// Instantiate the UUT
   ALU UUT (
		.A(A), 
		.B(B), 
		.ALU_operation(ALU_operation), 
		.res(res), 
		.overflow(overflow), 
		.zero(zero)
   );
// Initialize Inputs
    initial begin
	A=32'b0;
	B=32'b0;
	ALU_operation =3'b000;
	#100;
	A=32'hA5A5A5A5;	B=32'h5A5A5A5A;	ALU_operation =3'b111;	#100;	ALU_operation =3'b110;	#100;	ALU_operation =3'b101;	#100;	ALU_operation =3'b100;	#100;	ALU_operation =3'b011;	#100;	ALU_operation =3'b010;	#100;	ALU_operation =3'b001;	#100;	ALU_operation =3'b000;	#100;	A=32'h01234567;	B=32'h76543210;	ALU_operation =3'b111;
	end

endmodule
