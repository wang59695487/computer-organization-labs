`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:12:30 03/15/2016 
// Design Name: 
// Module Name:    HexTo8SEG 
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
module  HexTo8SEG(input [31:0] Hexs,		//�˿ڱ���˵���붨��ϲ�
//						input [2:0] Scan,
						input [7:0] points,
						input [7:0] LES,
						input flash,
						output[63:0] SEG_TXT
						);

	Hex2Seg HTS0(Hexs[31:28],LES[7],points[7],flash,SEG_TXT[7:0]);  
	Hex2Seg HTS1(Hexs[27:24],LES[6],points[6],flash,SEG_TXT[15:8]); 
	..... 

endmodule

module	
 Hex2Seg(input[3:0]Hex,
						input LE,
						input point, 
						input flash,
						output[7:0]Segment
						);
		wire en = LE & flash;	
		MC14495_ZJU  MSEG(.D3(Hex[3]),.D2(Hex[2]),.D1(Hex[1]),.D0(Hex[0]),.LE(en),.point(point),
								.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g),.p(p));
		assign Segment = {a,b,c,d,e,f,g,p};	//p,g,f,e,d,c,b,a
endmodule
