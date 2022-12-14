`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:04:50 03/11/2018 
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
module clk_div(input clk, //主板时钟
					input rst, //复位信号
					input SW2, //CPU时钟切换
					output reg [31:0]clkdiv, //32位计数分频输出
					output Clk_CPU //CPU时钟输出
					);
					
		always @(posedge clk or posedge rst)
		begin
		if(rst)
		clkdiv <= 32'h0;
		else
		clkdiv <= clkdiv + 32'h1;
		end
		assign Clk_CPU = (SW2) ? clkdiv[24] : clkdiv[2];


endmodule
