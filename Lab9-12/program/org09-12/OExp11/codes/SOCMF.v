`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:04:25 05/15/2018 
// Design Name: 
// Module Name:    SOCMF 
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
module SOCMF(input clk_100mhz,
				 input [3:0] K_COL,
				 input [15:0] SW,
				 input RSTN,
				 
				 output CR,
				 output RDY,
				 output readn,
				 output [4:0] K_ROW,
				 output SEGCLK,
				 output SEGDT,
				 output SEGEN,
				 output SEGCLR,
				 output [3:0] AN,
				 output [7:0] SEGMENT,
				 output [7:0] LED,
				 output LEDCLK,
				 output LEDDT,
				 output LEDEN,
				 output LEDCLR,
				 output Buzzer
				 
    );

wire Clk_CPU, rst, clk_m, mem_w, data_ram_we,counter_we;
wire counter_OUT0, counter_OUT1, counter_OUT2;
wire [1:0]Counter_set;
wire MIO_ready;
wire CPU_MIO;
wire V5, N0;
wire counter0_out, counter1_out, counter2_out;
wire [3:0]Pulse;
wire [3:0]BTN_OK;
wire [15:0]SW_OK;
wire [4:0]Key_out;
wire [31:0]Div;
wire [31:0]Ai;
wire [31:0]Bi;
wire [7:0]blink;
wire [31:0]Disp_num;
wire [7:0]point_out;
wire [7:0]LE_out;
wire [31:0]PC;
wire [31:0]inst;
wire [31:0]Addr_out;
wire [31:0]Data_in;
wire [31:0]Data_out;
wire [4:0]State;
wire [31:0]din;
wire [9:0]ram_addr;
wire [31:0]dout;
wire [31:0]CPU2IO;
wire [15:0]LED_out;
wire [31:0]Counter_out;
wire [1:0]counter_set;


//
VCC fuck(.P(V5));
GND you(.G(N0));
///////////////////////////////////////////////////////////////////////////////////////

assign IO_clk = ~Clk_CPU;
//assign MIO_ready = 1'b1;
assign Buzzer = 1'b1;
//assign INT　＝　counter0_out;


SAnti_jitter U9(.clk(clk_100mhz),
					 .RSTN(RSTN),
					 .readn(readn),
					 .Key_y(K_COL[3:0]), //阵列式键盘列输入
					 .Key_x(K_ROW[4:0]),
					 .Key_out(Key_out[4:0]),
					 .CR(CR),
					 .Key_ready(RDY),
					 .pulse_out(Pulse[3:0]),
					 .BTN_OK(BTN_OK[3:0]),
					 .SW_OK(SW_OK[15:0]),
					 .rst(rst),
					 .SW(SW[15:0])
					 );
clk_div 		  U8(.clk(clk_100mhz),
					  .rst(rst),
					  .SW2(SW_OK[2]),
					  .clkdiv(Div[31:0]),
					  .Clk_CPU(Clk_CPU)
					  );
SEnter_2_32   M4(.clk(clk_100mhz),
					  .Din(Key_out[4:0]),
					  .D_ready(Key_ready),
					  .BTN(BTN_OK[2:0]),
					  .Ctrl({SW_OK[7:5], SW_OK[15], SW_OK[0]}),
					  .readn(readn),
					  .Ai(Ai[31:0]), 
                 .Bi(Bi[31:0]), 
                 .blink(blink[7:0])
					  );
Display       U6(.clk(clk_100mhz), 
						.flash(Div[25]), 
						.Hexs(Disp_num[31:0]), 
						.LES(LE_out[7:0]), 
						.point(point_out[7:0]), 
						.rst(rst), 
						.Start(Div[20]), 
						.Text(SW_OK[0]), 
						.segclk(SEGCLK), 
						.segclrn(SEGCLR), 
						.SEGEN(SEGEN), 
						.segsout(SEGDT)
						);
MCPU			  U1(.clk(Clk_CPU),
					  .reset(rst),
					  .inst_out(inst[31:0]),
					  .PC_out(PC[31:0]),
					  .mem_w(mem_w),
					  .Addr_out(Addr_out[31:0]),
					  .Data_in(Data_in[31:0]),
					  .Data_out(Data_out[31:0]), 
					  .state(State[4:0]),
					  .CPU_MIO(),
					  .MIO_ready(V5),
					  .INT(counter0_out)
					  );
MIO_BUS        U4(.clk(clk_100mhz),
						.rst(rst),
						.BTN(BTN_OK[3:0]),
						.SW(SW_OK[15:0]), 
						.mem_w(mem_w),
						.addr_bus(Addr_out[31:0]),
						.Cpu_data4bus(Data_in[31:0]),
						.Cpu_data2bus(Data_out[31:0]),
						.ram_data_in(din[31:0]),
						.data_ram_we(data_ram_we),
						.ram_addr(ram_addr[9:0]),
						.ram_data_out(dout[31:0]),
						.Peripheral_in(CPU2IO[31:0]),
						.GPIOe0000000_we(GPIOE0), 
						.GPIOf0000000_we(GPIOF0), 
					   .led_out(LED_out[15:0]),
						.counter_out(Counter_out[31:0]),
						.counter2_out(counter2_out),
						.counter1_out(counter1_out),
						.counter0_out(counter0_out),
						.counter_we(counter_we)
						);
Multi_8CH32    U5 (.clk(IO_clk), 
                   .Data0(CPU2IO[31:0]), 
                   .data1({N0, N0, PC[31:2]}), 
                   .data2(inst[31:0]), 
                   .data3(Counter_out[31:0]), 
                   .data4(Addr_out[31:0]), 
                   .data5(Data_out[31:0]), 
                   .data6(Data_in[31:0]), 
                   .data7(PC[31:0]), 
                   .EN(GPIOE0), 
                   .LES({N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, 
         N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, 
         N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, 
         N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0}), 
                   .point_in({Div[31:0], Div[31:0]}), 
                   .rst(rst), 
                   .Test(SW_OK[7:5]), 
                   .Disp_num(Disp_num[31:0]), 
                   .LE_out(LE_out[7:0]), 
                   .point_out(point_out[7:0])
						 );
GPIO  			U7(.clk(IO_clk), 
						.EN(GPIOF0), 
						.P_Data(CPU2IO[31:0]), 
						.rst(rst), 
						.Start(Div[20]), 
						.counter_set(counter_set[1:0]), 
						.GPIOf0(), 
						.ledclk(LEDCLK), 
						.ledclrn(LEDCLR), 
						.LEDEN(LEDEN), 
						.ledsout(LEDDT), 
						.LED_out(LED_out[15:0])
						);

Counter  		U10(.clk(IO_clk), 
                .clk0(Div[6]), 
                .clk1(Div[9]), 
                .clk2(Div[11]), 
                .counter_ch(counter_set[1:0]), 
                .counter_val(CPU2IO[31:0]), 
                .counter_we(counter_we), 
                .rst(rst), 
                .counter_out(Counter_out[31:0]), 
                .counter0_OUT(counter0_out), 
                .counter1_OUT(counter1_out), 
                .counter2_OUT(counter2_out)
					 );
					 
RAM_B  			U3(.addra(ram_addr[9:0]), 
						.clka(IO_clk), 
						.dina(din[31:0]), 
						.wea(data_ram_we), 
						.douta(dout[31:0])
						);
						
Seg7_Dev  		U61(.flash(Div[25]), 
						 .Hexs(Disp_num[31:0]), 
						 .LES(LE_out[7:0]), 
						 .point(point_out[7:0]), 
						 .Scan({SW_OK[1], Div[19:18]}), 
						 .SW0(SW_OK[0]), 
					 	 .AN(AN[3:0]), 
						 .SEGMENT(SEGMENT[7:0]));
PIO  				U71(.clk(IO_clk), 
						 .EN(GPIOF0), 
						 .PData_in(CPU2IO[31:0]), 
						 .rst(rst), 
						 .counter_set(), 
						 .GPIOf0(), 
					    .LED_out(LED[7:0]));

endmodule
