`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:36:38 03/28/2018 
// Design Name: 
// Module Name:    ABC32 
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
module ABC32(input [31:0]A,
				 input [31:0]B,
				 input sub,
				 
				 output Co,				 
				 output [31:0]S
    );
wire [31:0]w;
assign   w=(sub==0)? B:({32{sub}}^B);
assign	{Co, S}=A+w+sub;

endmodule
