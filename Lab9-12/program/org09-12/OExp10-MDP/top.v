`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:09:00 05/07/2019 
// Design Name: 
// Module Name:    top 
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
module top(input clk_100mhz,
           input[3:0]BTN_y,
			  input[15:0]SW,
			  input RSTN,
			  output[7:0]LED,
			  output[7:0]SEGMENT,
		     output[3:0]AN,
			  output[4:0]BTN_x,
			  output led_clk,
			  output led_sout,
			  output LED_PEN,
			  output led_clrn,
			  output seg_clk,
			  output seg_sout,
			  output SEG_PEN,
			  output seg_clrn,
			  output RDY,
			  output readn,
			  output CR);
			  
	wire Clk_CPU;

	wire [1:0]button_out;
	wire [15:0]SW_OK;
	wire [7:0]led_out;

	//U1
	wire rst;
	wire [31:0]Data_in;
	wire [31:0]Data_out;
	wire [31:0]Addr_out;
	wire [4:0]state;
	wire [31:0]PC;
	wire CPU_MIO;
	wire mem_w;
	wire MIO_ready;
	wire INT;
	wire [31:0]inst;


	assign MIO_ready=~button_out[1];
	//U9
	wire [4:0]Din;
	wire [3:0]Pulse;
	wire [3:0]BTN_OK;
	//U8
	wire [31:0]Div;
	//U6
	wire [7:0]LE_out;
	wire [7:0]point_out;;
	wire [31:0]Disp_num;
	//U3
	wire data_ram_we;
	wire [9:0]ram_addr;
	wire [31:0]ram_data_in;
	wire [31:0]ram_data_out;
	//U4
	wire GPIOf0;
	wire GPIOf0000000_we,GPIOe0000000_we,counter_we;
	wire [15:0]LED_out;
	wire counter_OUT0,counter_OUT1,counter_OUT2;
	wire [31:0]CPU2IO;
	wire [31:0]Counter_out;
	//U7
	wire clk_io;
	wire[1:0]Counter_set;
	assign clk_io=~Clk_CPU;
	//M4
	wire [31:0]Ai;
	wire [31:0]Bi;
	wire [7:0]blink;
	
	
	Multi_CPU U1(.clk(Clk_CPU),.reset(rst),.inst_out(inst[31:0]),.PC_out(PC),.INT(INT),.MIO_ready(MIO_ready),.Data_in(Data_in[31:0]),.Data_out(Data_out[31:0]),.state(state[4:0]),.Addr_out(Addr_out[31:0]),.mem_w(mem_w));
	
	RAM_B U3(.clka(clk_100mhz),.wea(data_ram_we),.addra(ram_addr),.dina(ram_data_in),.douta(ram_data_out));

	MIO_BUS U4(.clk(clk_100mhz),.rst(rst),.BTN(BTN_OK),.SW(SW_OK),.mem_w(mem_w),.addr_bus(Addr_out),.Cpu_data4bus(Data_in),.Cpu_data2bus(Data_out),.ram_data_in(ram_data_in),.data_ram_we(data_ram_we),.ram_addr(ram_addr),.ram_data_out(ram_data_out),.Peripheral_in(CPU2IO),.GPIOe0000000_we(GPIOe0000000_we),.GPIOf0000000_we(GPIOf0000000_we),.led_out(LED_out),.counter_out(Counter_out),.counter2_out(counter_OUT2),.counter1_out(counter_OUT1),.counter0_out(counter_OUT0),.counter_we(counter_we));

	Multi_8CH32 U5(.clk(clk_io),.rst(rst),.EN(GPIOe0000000_we),.Test(SW_OK[7:5]),.point_in({Div[31:0],Div[31:13],state[4:0],8'b00000000}),.LES({64{1'b0}}),.Data0(CPU2IO),.data1({2'b00,PC[31:2]}),.data2(inst),.data3(Counter_out),.data4(Addr_out),.data5(Data_out),.data6(Data_in),.data7(PC),.Disp_num(Disp_num),.point_out(point_out),.LE_out(LE_out));

	SSeg7_Dev U6(.clk(clk_100mhz),.rst(rst),.Start(Div[20]),.SW0(SW_OK[0]),.flash(Div[25]),.Hexs(Disp_num[31:0]),.point(point_out[7:0]),.LES(LE_out[7:0]),.seg_clk(seg_clk),.seg_sout(seg_sout),.SEG_PEN(SEG_PEN),.seg_clrn(seg_clrn));

	SPIO U7(.clk(clk_io),.rst(rst),.EN(GPIOf0000000_we),.Start(Div[20]),.GPIOf0(GPIOf0),.P_Data(CPU2IO),.counter_set(Counter_set),.LED_out(LED_out),.led_clk(led_clk),.led_sout(led_sout),.LED_PEN(LED_PEN),.led_clrn(led_clrn));
	
	clk_div U8(.clk(clk_100mhz),.rst(rst),.SW2(SW_OK[2]),.clkdiv(Div[31:0]),.Clk_CPU(Clk_CPU));

	SAnti_jitter U9(.clk(clk_100mhz),.RSTN(RSTN),.readn(readn),.Key_y(BTN_y[3:0]),.Key_x(BTN_x[4:0]),.SW(SW[15:0]),.CR(CR),.Key_out(Din[4:0]),.Key_ready(RDY),.pulse_out(Pulse[3:0]),.BTN_OK(BTN_OK[3:0]),.SW_OK(SW_OK[15:0]),.rst(rst));

	Counter_x U10(.clk(clk_io),.rst(rst),.clk0(Div[8]),.clk1(Div[9]),.clk2(Div[11]),.counter_we(counter_we),.counter_val(CPU2IO),.counter_ch(Counter_set),.counter0_OUT(counter_OUT0),.counter1_OUT(counter_OUT1),.counter2_OUT(counter_OUT2),.counter_out(Counter_out));

	Seg7_Dev U61(.Scan({SW_OK[1],Div[19:18]}),.SW0(SW_OK[0]),.flash(Div[25]),.Hexs(Disp_num),.point(point_out),.LES(LE_out),.SEGMENT(SEGMENT),.AN(AN));

	PIO U71(.clk(clk_io),.rst(rst),.EN(GPIOf0),.PData_in(CPU2IO),.LED_out(LED));

	SEnter_2_32 M4(.clk(clk_100mhz),.Din(Din),.D_ready(RDY),.BTN(BTN_OK[2:0]),.Ctrl({SW_OK[7:5],SW_OK[15],SW_OK[0]}),.readn(readn),.Ai(Ai),.Bi(Bi),.blink(blink));
	endmodule
