`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:19:38 07/17/2012 
// Design Name: 
// Module Name:    clk_div 
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
module clk_div(input clk, //����ʱ��
					input rst, //��λ�ź�
					input SW2, //CPUʱ���л�
					output reg [31:0]clkdiv, //32λ������Ƶ���
					output Clk_CPU //CPUʱ�����
					);
					
		initial clkdiv = 32'b0;
					
		always @(posedge clk or posedge rst) begin
			if(rst)
				clkdiv <= 0;
			else
				clkdiv <= clkdiv + 1;
		end
		assign Clk_CPU = (SW2) ? clkdiv[24] : clkdiv[2];
	

endmodule

