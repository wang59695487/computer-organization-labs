`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:55:53 03/28/2018 
// Design Name: 
// Module Name:    regs 
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
module Regs(input clk,
				input rst,
				input [4:0] R_addr_A, //��ַ1
				input [4:0] R_addr_B, //��ַ2
				input [4:0] Wt_addr, //д�ĵ�ַ
				input [31:0]Wt_data, //д������
				input L_S,                 //д���ź�
				output [31:0] rdata_A, //�����ĵ�һ������
				output [31:0] rdata_B  //�����ĵڶ�������
			  );

reg [31:0] register [1:31]; 				// r1 - r31
integer i;

	assign rdata_A = (R_addr_A == 0)? 0 : register[R_addr_A]; 	 // read
	assign rdata_B = (R_addr_B == 0)? 0 : register[R_addr_B];    // read
	
	always @(posedge clk or posedge rst) 
      begin
		if (rst==1) 	 begin 			// reset
		    for (i=1; i<32; i=i+1)
		    register[i] <= 0;	//i;
		end 
		else begin
		     if ((Wt_addr != 0) && (L_S == 1)) 	// write
		     register[Wt_addr] <= Wt_data;
		end
	end
	
endmodule