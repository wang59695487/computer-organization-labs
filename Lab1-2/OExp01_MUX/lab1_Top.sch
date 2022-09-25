<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="RSTN" />
        <signal name="SW(15:0)" />
        <signal name="BTN_x(4:0)" />
        <signal name="BTN_y(3:0)" />
        <signal name="XLXN_10" />
        <signal name="XLXN_17(0:0)" />
        <signal name="XLXN_18(31:0)" />
        <signal name="XLXN_20" />
        <signal name="XLXN_23" />
        <signal name="readn" />
        <signal name="CR" />
        <signal name="XLXN_27(4:0)" />
        <signal name="RDY" />
        <signal name="XLXN_31(3:0)" />
        <signal name="XLXN_32(7:0)" />
        <signal name="XLXN_52(31:0)" />
        <signal name="XLXN_53(31:0)" />
        <signal name="XLXN_54(31:0)" />
        <signal name="XLXN_55(7:0)" />
        <signal name="XLXN_56(7:0)" />
        <signal name="V5" />
        <signal name="XLXN_58" />
        <signal name="seg_clk" />
        <signal name="seg_sout" />
        <signal name="SEG_PEN" />
        <signal name="seg_clrn" />
        <signal name="XLXN_33" />
        <signal name="XLXN_34" />
        <signal name="XLXN_35" />
        <signal name="XLXN_36" />
        <signal name="XLXN_37(31:0)" />
        <signal name="led_clk" />
        <signal name="led_sout" />
        <signal name="led_clrn" />
        <signal name="LED_PEN" />
        <signal name="clk_100mhz" />
        <signal name="SEGMENT(7:0)" />
        <signal name="LED(7:0)" />
        <signal name="XLXN_88(2:0)" />
        <signal name="XLXN_89" />
        <signal name="XLXN_90" />
        <signal name="XLXN_91(31:0)" />
        <signal name="XLXN_93(7:0)" />
        <signal name="XLXN_94(7:0)" />
        <signal name="AN(3:0)" />
        <signal name="Buzzer" />
        <signal name="XLXN_105" />
        <signal name="XLXN_86(31:0)" />
        <signal name="XLXN_121" />
        <signal name="XLXN_122(31:0)" />
        <signal name="XLXN_124(9:0)" />
        <signal name="N0" />
        <signal name="BTN_OK(3:0)" />
        <signal name="SW_OK(15:0)" />
        <signal name="XLXN_127(31:0)" />
        <signal name="XLXN_128" />
        <signal name="BTN_OK(2:0)" />
        <signal name="SW_OK(7:5),SW_OK(15),SW_OK(0)" />
        <signal name="SW_OK(7:5)" />
        <signal name="XLXN_132(63:0)" />
        <signal name="XLXN_133(63:0)" />
        <signal name="XLXN_134(31:0)" />
        <signal name="XLXN_135(31:0)" />
        <signal name="XLXN_136(31:0)" />
        <signal name="XLXN_137(31:0)" />
        <signal name="XLXN_138" />
        <signal name="XLXN_139" />
        <signal name="XLXN_140" />
        <signal name="XLXN_141" />
        <signal name="XLXN_142" />
        <signal name="XLXN_143" />
        <port polarity="Input" name="RSTN" />
        <port polarity="Input" name="SW(15:0)" />
        <port polarity="Output" name="BTN_x(4:0)" />
        <port polarity="Input" name="BTN_y(3:0)" />
        <port polarity="Output" name="readn" />
        <port polarity="Output" name="CR" />
        <port polarity="Output" name="RDY" />
        <port polarity="Output" name="seg_clk" />
        <port polarity="Output" name="seg_sout" />
        <port polarity="Output" name="SEG_PEN" />
        <port polarity="Output" name="seg_clrn" />
        <port polarity="Output" name="led_clk" />
        <port polarity="Output" name="led_sout" />
        <port polarity="Output" name="led_clrn" />
        <port polarity="Output" name="LED_PEN" />
        <port polarity="Input" name="clk_100mhz" />
        <port polarity="Output" name="SEGMENT(7:0)" />
        <port polarity="Output" name="LED(7:0)" />
        <port polarity="Output" name="AN(3:0)" />
        <port polarity="Output" name="Buzzer" />
        <blockdef name="SAnti_jitter">
            <timestamp>2015-12-27T10:36:31</timestamp>
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(170,255,255);fillstyle:Solid" width="300" x="64" y="-248" height="256" />
            <line x2="32" y1="-64" y2="-64" style="linewidth:W" x1="64" />
            <line x2="32" y1="-32" y2="-32" x1="64" />
            <line x2="32" y1="-160" y2="-160" style="linewidth:W" x1="64" />
            <line x2="32" y1="-112" y2="-112" style="linewidth:W" x1="64" />
            <line x2="32" y1="-224" y2="-224" x1="64" />
            <line x2="32" y1="-192" y2="-192" x1="64" />
            <line x2="400" y1="-192" y2="-192" style="linewidth:W" x1="368" />
            <line x2="364" y1="-160" y2="-160" x1="400" />
            <line x2="364" y1="-224" y2="-224" x1="400" />
            <line x2="364" y1="-16" y2="-16" x1="400" />
            <line x2="400" y1="-48" y2="-48" style="linewidth:W" x1="368" />
            <line x2="400" y1="-128" y2="-128" style="linewidth:W" x1="368" />
            <line x2="400" y1="-96" y2="-96" style="linewidth:W" x1="368" />
        </blockdef>
        <blockdef name="SEnter_2_32">
            <timestamp>2015-12-27T10:39:45</timestamp>
            <line x2="288" y1="-240" y2="-240" x1="320" />
            <line x2="320" y1="-192" y2="-192" style="linewidth:W" x1="288" />
            <line x2="320" y1="-128" y2="-128" style="linewidth:W" x1="288" />
            <line x2="320" y1="-64" y2="-64" style="linewidth:W" x1="288" />
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(170,255,255);fillstyle:Solid" width="256" x="32" y="-272" height="272" />
            <line x2="0" y1="-208" y2="-208" style="linewidth:W" x1="32" />
            <line x2="0" y1="-176" y2="-176" x1="32" />
            <line x2="0" y1="-240" y2="-240" x1="32" />
            <line x2="0" y1="-64" y2="-64" style="linewidth:W" x1="32" />
            <line x2="0" y1="-112" y2="-112" style="linewidth:W" x1="32" />
        </blockdef>
        <blockdef name="SPIO">
            <timestamp>2015-12-27T17:4:20</timestamp>
            <line x2="32" y1="-224" y2="-224" x1="64" />
            <line x2="32" y1="-32" y2="-32" style="linewidth:W" x1="64" />
            <line x2="464" y1="-224" y2="-224" style="linewidth:W" x1="448" />
            <line x2="32" y1="-176" y2="-176" x1="64" />
            <line x2="32" y1="-128" y2="-128" x1="64" />
            <line x2="32" y1="-80" y2="-80" x1="64" />
            <line x2="464" y1="-192" y2="-192" style="linewidth:W" x1="448" />
            <line x2="464" y1="-160" y2="-160" style="linewidth:W" x1="448" />
            <line x2="448" y1="-128" y2="-128" x1="464" />
            <line x2="464" y1="-96" y2="-96" x1="448" />
            <line x2="448" y1="-32" y2="-32" x1="464" />
            <line x2="464" y1="-64" y2="-64" x1="448" />
            <rect style="fillcolor:rgb(149,160,255);fillstyle:Solid" width="384" x="64" y="-260" height="256" />
        </blockdef>
        <blockdef name="SSeg7_Dev">
            <timestamp>2015-12-28T12:22:47</timestamp>
            <line x2="0" y1="-48" y2="-48" style="linewidth:W" x1="32" />
            <line x2="368" y1="-160" y2="-160" x1="384" />
            <line x2="368" y1="-224" y2="-224" x1="384" />
            <line x2="368" y1="-96" y2="-96" x1="384" />
            <line x2="0" y1="-80" y2="-80" style="linewidth:W" x1="32" />
            <line x2="0" y1="-112" y2="-112" style="linewidth:W" x1="32" />
            <rect style="linecolor:rgb(0,0,0);fillcolor:rgb(174,185,255);fillstyle:Solid" width="336" x="32" y="-372" height="360" />
            <line x2="0" y1="-224" y2="-224" x1="32" />
            <line x2="0" y1="-160" y2="-160" x1="32" />
            <line x2="368" y1="-288" y2="-288" x1="384" />
            <line x2="0" y1="-336" y2="-336" x1="32" />
            <line x2="0" y1="-304" y2="-304" x1="32" />
            <line x2="0" y1="-272" y2="-272" x1="32" />
        </blockdef>
        <blockdef name="Multi_8CH32">
            <timestamp>2015-11-8T11:47:47</timestamp>
            <line x2="0" y1="-528" y2="-528" style="linewidth:W" x1="32" />
            <line x2="0" y1="-464" y2="-464" style="linewidth:W" x1="32" />
            <line x2="0" y1="-672" y2="-672" x1="32" />
            <line x2="0" y1="-624" y2="-624" x1="32" />
            <line x2="0" y1="-576" y2="-576" x1="32" />
            <line x2="0" y1="-416" y2="-416" style="linewidth:W" x1="32" />
            <line x2="0" y1="-368" y2="-368" style="linewidth:W" x1="32" />
            <line x2="0" y1="-320" y2="-320" style="linewidth:W" x1="32" />
            <line x2="0" y1="-272" y2="-272" style="linewidth:W" x1="32" />
            <line x2="0" y1="-224" y2="-224" style="linewidth:W" x1="32" />
            <line x2="0" y1="-176" y2="-176" style="linewidth:W" x1="32" />
            <line x2="0" y1="-128" y2="-128" style="linewidth:W" x1="32" />
            <line x2="0" y1="-80" y2="-80" style="linewidth:W" x1="32" />
            <line x2="0" y1="-32" y2="-32" style="linewidth:W" x1="32" />
            <line x2="352" y1="-576" y2="-576" style="linewidth:W" x1="384" />
            <line x2="352" y1="-528" y2="-528" style="linewidth:W" x1="384" />
            <line x2="352" y1="-624" y2="-624" style="linewidth:W" x1="384" />
            <rect style="fillcolor:rgb(179,164,255);fillstyle:Solid" width="320" x="32" y="-696" height="696" />
        </blockdef>
        <blockdef name="ROM_D">
            <timestamp>2016-1-1T5:13:26</timestamp>
            <rect style="fillcolor:rgb(255,170,255);fillstyle:Solid" width="512" x="32" y="4" height="324" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="544" y1="80" y2="80" style="linewidth:W" x1="576" />
        </blockdef>
        <blockdef name="RAM_B">
            <timestamp>2016-1-1T5:47:56</timestamp>
            <rect style="fillcolor:rgb(255,170,255);fillstyle:Solid" width="512" x="32" y="32" height="316" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="272" y2="272" x1="0" />
            <line x2="32" y1="144" y2="144" style="linewidth:W" x1="0" />
            <line x2="32" y1="224" y2="224" style="linewidth:W" x1="0" />
            <line x2="544" y1="144" y2="144" style="linewidth:W" x1="576" />
        </blockdef>
        <blockdef name="clk_div">
            <timestamp>2015-12-27T10:17:42</timestamp>
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(142,240,255);fillstyle:Solid" width="256" x="32" y="-140" height="140" />
            <line x2="0" y1="-80" y2="-80" x1="32" />
            <line x2="0" y1="-112" y2="-112" x1="32" />
            <line x2="0" y1="-32" y2="-32" x1="32" />
            <line x2="320" y1="-112" y2="-112" style="linewidth:W" x1="288" />
            <line x2="320" y1="-32" y2="-32" x1="288" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="Seg7_Dev">
            <timestamp>2016-2-25T15:50:0</timestamp>
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(192,173,254);fillstyle:Solid" width="288" x="32" y="-240" height="240" />
            <line x2="0" y1="-32" y2="-32" style="linewidth:W" x1="32" />
            <line x2="0" y1="-208" y2="-208" style="linewidth:W" x1="32" />
            <line x2="352" y1="-192" y2="-192" style="linewidth:W" x1="320" />
            <line x2="352" y1="-64" y2="-64" style="linewidth:W" x1="320" />
            <line x2="0" y1="-64" y2="-64" style="linewidth:W" x1="32" />
            <line x2="32" y1="-144" y2="-144" x1="0" />
            <line x2="32" y1="-176" y2="-176" x1="0" />
            <line x2="0" y1="-96" y2="-96" style="linewidth:W" x1="32" />
        </blockdef>
        <blockdef name="PIO">
            <timestamp>2016-2-25T15:50:0</timestamp>
            <rect style="fillcolor:rgb(149,160,255);fillstyle:Solid" width="384" x="64" y="-256" height="256" />
            <line x2="32" y1="-224" y2="-224" x1="64" />
            <line x2="32" y1="-160" y2="-160" x1="64" />
            <line x2="32" y1="-96" y2="-96" x1="64" />
            <line x2="32" y1="-32" y2="-32" style="linewidth:W" x1="64" />
            <line x2="480" y1="-32" y2="-32" style="linewidth:W" x1="448" />
            <line x2="480" y1="-128" y2="-128" style="linewidth:W" x1="448" />
            <line x2="480" y1="-224" y2="-224" style="linewidth:W" x1="448" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="SAnti_jitter" name="U9">
            <blockpin signalname="SW(15:0)" name="SW(15:0)" />
            <blockpin signalname="readn" name="readn" />
            <blockpin signalname="BTN_y(3:0)" name="Key_y(3:0)" />
            <blockpin signalname="BTN_x(4:0)" name="Key_x(4:0)" />
            <blockpin signalname="RSTN" name="RSTN" />
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="XLXN_27(4:0)" name="Key_out(4:0)" />
            <blockpin signalname="RDY" name="Key_ready" />
            <blockpin signalname="CR" name="CR" />
            <blockpin signalname="XLXN_10" name="rst" />
            <blockpin signalname="SW_OK(15:0)" name="SW_OK(15:0)" />
            <blockpin signalname="XLXN_31(3:0)" name="pulse_out(3:0)" />
            <blockpin signalname="BTN_OK(3:0)" name="BTN_OK(3:0)" />
        </block>
        <block symbolname="SEnter_2_32" name="M4">
            <blockpin signalname="readn" name="readn" />
            <blockpin signalname="XLXN_52(31:0)" name="Ai(31:0)" />
            <blockpin signalname="XLXN_53(31:0)" name="Bi(31:0)" />
            <blockpin signalname="XLXN_32(7:0)" name="blink(7:0)" />
            <blockpin signalname="XLXN_27(4:0)" name="Din(4:0)" />
            <blockpin signalname="RDY" name="D_ready" />
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="SW_OK(7:5),SW_OK(15),SW_OK(0)" name="Ctrl(4:0)" />
            <blockpin signalname="BTN_OK(2:0)" name="BTN(2:0)" />
        </block>
        <block symbolname="SSeg7_Dev" name="U6">
            <blockpin signalname="XLXN_56(7:0)" name="LES(7:0)" />
            <blockpin signalname="SEG_PEN" name="SEG_PEN" />
            <blockpin signalname="seg_sout" name="seg_sout" />
            <blockpin signalname="seg_clrn" name="seg_clrn" />
            <blockpin signalname="XLXN_55(7:0)" name="point(7:0)" />
            <blockpin signalname="XLXN_54(31:0)" name="Hexs(31:0)" />
            <blockpin signalname="XLXN_142" name="SW0" />
            <blockpin signalname="XLXN_143" name="flash" />
            <blockpin signalname="seg_clk" name="seg_clk" />
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="XLXN_140" name="rst" />
            <blockpin signalname="XLXN_141" name="Start" />
        </block>
        <block symbolname="Multi_8CH32" name="U5">
            <blockpin signalname="SW_OK(7:5)" name="Test(2:0)" />
            <blockpin signalname="XLXN_132(63:0)" name="point_in(63:0)" />
            <blockpin signalname="XLXN_58" name="EN" />
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="XLXN_10" name="rst" />
            <blockpin signalname="XLXN_133(63:0)" name="LES(63:0)" />
            <blockpin signalname="XLXN_52(31:0)" name="Data0(31:0)" />
            <blockpin signalname="XLXN_53(31:0)" name="data1(31:0)" />
            <blockpin signalname="XLXN_134(31:0)" name="data2(31:0)" />
            <blockpin signalname="XLXN_135(31:0)" name="data3(31:0)" />
            <blockpin signalname="XLXN_136(31:0)" name="data4(31:0)" />
            <blockpin signalname="XLXN_137(31:0)" name="data5(31:0)" />
            <blockpin signalname="XLXN_122(31:0)" name="data6(31:0)" />
            <blockpin signalname="XLXN_18(31:0)" name="data7(31:0)" />
            <blockpin signalname="XLXN_55(7:0)" name="point_out(7:0)" />
            <blockpin signalname="XLXN_56(7:0)" name="LE_out(7:0)" />
            <blockpin signalname="XLXN_54(31:0)" name="Disp_num(31:0)" />
        </block>
        <block symbolname="ROM_D" name="U2">
            <blockpin signalname="XLXN_124(9:0)" name="a(9:0)" />
            <blockpin signalname="XLXN_122(31:0)" name="spo(31:0)" />
        </block>
        <block symbolname="RAM_B" name="U3">
            <blockpin signalname="XLXN_124(9:0)" name="addra(9:0)" />
            <blockpin signalname="XLXN_20" name="clka" />
            <blockpin signalname="XLXN_17(0:0)" name="wea(0:0)" />
            <blockpin signalname="XLXN_122(31:0)" name="dina(31:0)" />
            <blockpin signalname="XLXN_18(31:0)" name="douta(31:0)" />
        </block>
        <block symbolname="clk_div" name="U8">
            <blockpin signalname="XLXN_10" name="rst" />
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="XLXN_23" name="SW2" />
            <blockpin signalname="XLXN_127(31:0)" name="clkdiv(31:0)" />
            <blockpin signalname="XLXN_128" name="Clk_CPU" />
        </block>
        <block symbolname="inv" name="XLXI_1">
            <blockpin signalname="clk_100mhz" name="I" />
            <blockpin signalname="XLXN_20" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_3">
            <blockpin signalname="V5" name="P" />
        </block>
        <block symbolname="SPIO" name="U7">
            <blockpin signalname="XLXN_33" name="clk" />
            <blockpin signalname="XLXN_37(31:0)" name="P_Data(31:0)" />
            <blockpin signalname="XLXN_34" name="rst" />
            <blockpin signalname="XLXN_35" name="EN" />
            <blockpin signalname="XLXN_36" name="Start" />
            <blockpin signalname="led_clk" name="led_clk" />
            <blockpin name="GPIOf0(13:0)" />
            <blockpin name="LED_out(15:0)" />
            <blockpin name="counter_set(1:0)" />
            <blockpin signalname="led_clrn" name="led_clrn" />
            <blockpin signalname="LED_PEN" name="LED_PEN" />
            <blockpin signalname="led_sout" name="led_sout" />
        </block>
        <block symbolname="Seg7_Dev" name="U61">
            <blockpin signalname="XLXN_94(7:0)" name="LES(7:0)" />
            <blockpin signalname="XLXN_88(2:0)" name="Scan(2:0)" />
            <blockpin signalname="SEGMENT(7:0)" name="SEGMENT(7:0)" />
            <blockpin signalname="AN(3:0)" name="AN(3:0)" />
            <blockpin signalname="XLXN_93(7:0)" name="point(7:0)" />
            <blockpin signalname="XLXN_90" name="flash" />
            <blockpin signalname="XLXN_89" name="SW0" />
            <blockpin signalname="XLXN_91(31:0)" name="Hexs(31:0)" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="XLXN_105" name="I" />
            <blockpin signalname="Buzzer" name="O" />
        </block>
        <block symbolname="PIO" name="U71">
            <blockpin signalname="XLXN_121" name="clk" />
            <blockpin signalname="XLXN_138" name="rst" />
            <blockpin signalname="XLXN_139" name="EN" />
            <blockpin signalname="XLXN_86(31:0)" name="PData_in(31:0)" />
            <blockpin name="GPIOf0(21:0)" />
            <blockpin signalname="LED(7:0)" name="LED_out(7:0)" />
            <blockpin name="counter_set(1:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_7">
            <blockpin signalname="N0" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1152" y="496" name="U9" orien="R0">
        </instance>
        <instance x="2032" y="512" name="M4" orien="R0">
        </instance>
        <instance x="2688" y="576" name="U6" orien="R0">
        </instance>
        <instance x="2592" y="1648" name="U5" orien="R0">
        </instance>
        <instance x="1200" y="816" name="U8" orien="R0">
        </instance>
        <branch name="RSTN">
            <wire x2="1184" y1="272" y2="272" x1="688" />
        </branch>
        <branch name="SW(15:0)">
            <wire x2="912" y1="464" y2="464" x1="672" />
            <wire x2="912" y1="432" y2="464" x1="912" />
            <wire x2="1184" y1="432" y2="432" x1="912" />
        </branch>
        <branch name="BTN_x(4:0)">
            <wire x2="1184" y1="384" y2="384" x1="624" />
        </branch>
        <branch name="BTN_y(3:0)">
            <wire x2="1168" y1="320" y2="320" x1="592" />
            <wire x2="1168" y1="320" y2="336" x1="1168" />
            <wire x2="1184" y1="336" y2="336" x1="1168" />
        </branch>
        <iomarker fontsize="28" x="688" y="272" name="RSTN" orien="R180" />
        <iomarker fontsize="28" x="624" y="384" name="BTN_x(4:0)" orien="R180" />
        <iomarker fontsize="28" x="672" y="464" name="SW(15:0)" orien="R180" />
        <iomarker fontsize="28" x="592" y="320" name="BTN_y(3:0)" orien="R180" />
        <branch name="XLXN_10">
            <wire x2="1152" y1="592" y2="736" x1="1152" />
            <wire x2="1200" y1="736" y2="736" x1="1152" />
            <wire x2="1152" y1="736" y2="1024" x1="1152" />
            <wire x2="2592" y1="1024" y2="1024" x1="1152" />
            <wire x2="1568" y1="592" y2="592" x1="1152" />
            <wire x2="1568" y1="480" y2="480" x1="1552" />
            <wire x2="1568" y1="480" y2="592" x1="1568" />
        </branch>
        <branch name="XLXN_18(31:0)">
            <wire x2="2576" y1="1696" y2="1696" x1="1424" />
            <wire x2="2592" y1="1616" y2="1616" x1="2576" />
            <wire x2="2576" y1="1616" y2="1696" x1="2576" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="1200" y1="784" y2="784" x1="976" />
        </branch>
        <branch name="readn">
            <wire x2="1184" y1="464" y2="464" x1="1168" />
            <wire x2="1168" y1="464" y2="528" x1="1168" />
            <wire x2="2416" y1="528" y2="528" x1="1168" />
            <wire x2="2416" y1="272" y2="272" x1="2352" />
            <wire x2="2448" y1="272" y2="272" x1="2416" />
            <wire x2="2416" y1="272" y2="528" x1="2416" />
        </branch>
        <iomarker fontsize="28" x="2448" y="272" name="readn" orien="R0" />
        <branch name="XLXN_27(4:0)">
            <wire x2="2032" y1="304" y2="304" x1="1552" />
        </branch>
        <iomarker fontsize="28" x="1616" y="240" name="CR" orien="R0" />
        <branch name="CR">
            <wire x2="1568" y1="272" y2="272" x1="1552" />
            <wire x2="1616" y1="240" y2="240" x1="1568" />
            <wire x2="1568" y1="240" y2="272" x1="1568" />
        </branch>
        <branch name="RDY">
            <wire x2="1936" y1="336" y2="336" x1="1552" />
            <wire x2="2032" y1="336" y2="336" x1="1936" />
            <wire x2="1936" y1="208" y2="336" x1="1936" />
            <wire x2="2128" y1="208" y2="208" x1="1936" />
        </branch>
        <iomarker fontsize="28" x="2128" y="208" name="RDY" orien="R0" />
        <branch name="XLXN_31(3:0)">
            <wire x2="1760" y1="368" y2="368" x1="1552" />
        </branch>
        <branch name="XLXN_32(7:0)">
            <wire x2="2512" y1="448" y2="448" x1="2352" />
        </branch>
        <branch name="XLXN_52(31:0)">
            <wire x2="2464" y1="320" y2="320" x1="2352" />
            <wire x2="2464" y1="320" y2="1280" x1="2464" />
            <wire x2="2592" y1="1280" y2="1280" x1="2464" />
        </branch>
        <branch name="XLXN_53(31:0)">
            <wire x2="2448" y1="384" y2="384" x1="2352" />
            <wire x2="2448" y1="384" y2="1328" x1="2448" />
            <wire x2="2592" y1="1328" y2="1328" x1="2448" />
        </branch>
        <branch name="XLXN_54(31:0)">
            <wire x2="2608" y1="464" y2="656" x1="2608" />
            <wire x2="3008" y1="656" y2="656" x1="2608" />
            <wire x2="3008" y1="656" y2="1024" x1="3008" />
            <wire x2="2688" y1="464" y2="464" x1="2608" />
            <wire x2="3008" y1="1024" y2="1024" x1="2976" />
        </branch>
        <branch name="XLXN_55(7:0)">
            <wire x2="2640" y1="496" y2="624" x1="2640" />
            <wire x2="3056" y1="624" y2="624" x1="2640" />
            <wire x2="3056" y1="624" y2="1072" x1="3056" />
            <wire x2="2688" y1="496" y2="496" x1="2640" />
            <wire x2="3056" y1="1072" y2="1072" x1="2976" />
        </branch>
        <branch name="XLXN_56(7:0)">
            <wire x2="2688" y1="528" y2="528" x1="2672" />
            <wire x2="2672" y1="528" y2="592" x1="2672" />
            <wire x2="3104" y1="592" y2="592" x1="2672" />
            <wire x2="3104" y1="592" y2="1120" x1="3104" />
            <wire x2="3104" y1="1120" y2="1120" x1="2976" />
        </branch>
        <instance x="3264" y="704" name="XLXI_3" orien="R0" />
        <branch name="V5">
            <wire x2="3328" y1="704" y2="720" x1="3328" />
            <wire x2="3408" y1="720" y2="720" x1="3328" />
        </branch>
        <branch name="XLXN_58">
            <wire x2="2592" y1="1072" y2="1072" x1="2352" />
        </branch>
        <branch name="seg_clk">
            <wire x2="3168" y1="288" y2="288" x1="3072" />
        </branch>
        <branch name="seg_sout">
            <wire x2="3152" y1="352" y2="352" x1="3072" />
        </branch>
        <branch name="SEG_PEN">
            <wire x2="3168" y1="416" y2="416" x1="3072" />
        </branch>
        <branch name="seg_clrn">
            <wire x2="3168" y1="480" y2="480" x1="3072" />
        </branch>
        <iomarker fontsize="28" x="3168" y="288" name="seg_clk" orien="R0" />
        <iomarker fontsize="28" x="3152" y="352" name="seg_sout" orien="R0" />
        <iomarker fontsize="28" x="3168" y="416" name="SEG_PEN" orien="R0" />
        <iomarker fontsize="28" x="3168" y="480" name="seg_clrn" orien="R0" />
        <instance x="2400" y="2000" name="U7" orien="R0">
        </instance>
        <branch name="XLXN_33">
            <wire x2="2432" y1="1776" y2="1776" x1="2304" />
        </branch>
        <branch name="XLXN_34">
            <wire x2="2432" y1="1824" y2="1824" x1="2304" />
        </branch>
        <branch name="XLXN_35">
            <wire x2="2432" y1="1872" y2="1872" x1="2304" />
        </branch>
        <branch name="XLXN_36">
            <wire x2="2432" y1="1920" y2="1920" x1="2320" />
        </branch>
        <branch name="XLXN_37(31:0)">
            <wire x2="2432" y1="1968" y2="1968" x1="2320" />
        </branch>
        <branch name="led_clk">
            <wire x2="2992" y1="1872" y2="1872" x1="2864" />
            <wire x2="3040" y1="1824" y2="1824" x1="2992" />
            <wire x2="2992" y1="1824" y2="1872" x1="2992" />
        </branch>
        <branch name="led_sout">
            <wire x2="3072" y1="1904" y2="1904" x1="2864" />
        </branch>
        <branch name="led_clrn">
            <wire x2="2976" y1="1968" y2="1968" x1="2864" />
            <wire x2="2976" y1="1968" y2="2048" x1="2976" />
            <wire x2="3104" y1="2048" y2="2048" x1="2976" />
        </branch>
        <branch name="LED_PEN">
            <wire x2="2992" y1="1936" y2="1936" x1="2864" />
            <wire x2="2992" y1="1936" y2="1968" x1="2992" />
            <wire x2="3056" y1="1968" y2="1968" x1="2992" />
        </branch>
        <iomarker fontsize="28" x="3072" y="1904" name="led_sout" orien="R0" />
        <iomarker fontsize="28" x="3040" y="1824" name="led_clk" orien="R0" />
        <iomarker fontsize="28" x="3104" y="2048" name="led_clrn" orien="R0" />
        <iomarker fontsize="28" x="3056" y="1968" name="LED_PEN" orien="R0" />
        <instance x="832" y="1104" name="U2" orien="R0">
        </instance>
        <branch name="XLXN_20">
            <wire x2="848" y1="1824" y2="1824" x1="736" />
        </branch>
        <instance x="512" y="1856" name="XLXI_1" orien="R0" />
        <instance x="848" y="1552" name="U3" orien="R0">
        </instance>
        <branch name="XLXN_17(0:0)">
            <wire x2="848" y1="1696" y2="1696" x1="320" />
        </branch>
        <branch name="clk_100mhz">
            <wire x2="464" y1="704" y2="704" x1="320" />
            <wire x2="1136" y1="704" y2="704" x1="464" />
            <wire x2="1200" y1="704" y2="704" x1="1136" />
            <wire x2="464" y1="704" y2="976" x1="464" />
            <wire x2="2592" y1="976" y2="976" x1="464" />
            <wire x2="464" y1="976" y2="1824" x1="464" />
            <wire x2="512" y1="1824" y2="1824" x1="464" />
            <wire x2="1136" y1="176" y2="304" x1="1136" />
            <wire x2="1184" y1="304" y2="304" x1="1136" />
            <wire x2="1136" y1="304" y2="704" x1="1136" />
            <wire x2="1792" y1="176" y2="176" x1="1136" />
            <wire x2="1792" y1="176" y2="272" x1="1792" />
            <wire x2="2032" y1="272" y2="272" x1="1792" />
            <wire x2="1792" y1="160" y2="176" x1="1792" />
            <wire x2="2672" y1="160" y2="160" x1="1792" />
            <wire x2="2672" y1="160" y2="240" x1="2672" />
            <wire x2="2688" y1="240" y2="240" x1="2672" />
        </branch>
        <iomarker fontsize="28" x="320" y="704" name="clk_100mhz" orien="R180" />
        <branch name="XLXN_122(31:0)">
            <wire x2="816" y1="1568" y2="1776" x1="816" />
            <wire x2="848" y1="1776" y2="1776" x1="816" />
            <wire x2="2000" y1="1568" y2="1568" x1="816" />
            <wire x2="2592" y1="1568" y2="1568" x1="2000" />
            <wire x2="2000" y1="1184" y2="1184" x1="1408" />
            <wire x2="2000" y1="1184" y2="1568" x1="2000" />
        </branch>
        <branch name="XLXN_124(9:0)">
            <wire x2="800" y1="1184" y2="1184" x1="272" />
            <wire x2="832" y1="1184" y2="1184" x1="800" />
            <wire x2="800" y1="1184" y2="1632" x1="800" />
            <wire x2="848" y1="1632" y2="1632" x1="800" />
        </branch>
        <instance x="3264" y="1120" name="XLXI_7" orien="R0" />
        <branch name="N0">
            <wire x2="3328" y1="944" y2="992" x1="3328" />
            <wire x2="3408" y1="944" y2="944" x1="3328" />
        </branch>
        <branch name="BTN_OK(3:0)">
            <wire x2="1744" y1="400" y2="400" x1="1552" />
        </branch>
        <branch name="SW_OK(15:0)">
            <wire x2="1712" y1="448" y2="448" x1="1552" />
            <wire x2="1744" y1="448" y2="448" x1="1712" />
            <wire x2="1712" y1="448" y2="1120" x1="1712" />
            <wire x2="2016" y1="1120" y2="1120" x1="1712" />
        </branch>
        <branch name="XLXN_127(31:0)">
            <wire x2="1664" y1="704" y2="704" x1="1520" />
        </branch>
        <branch name="XLXN_128">
            <wire x2="1680" y1="784" y2="784" x1="1520" />
        </branch>
        <bustap x2="1840" y1="400" y2="400" x1="1744" />
        <branch name="BTN_OK(2:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="400" type="branch" />
            <wire x2="1936" y1="400" y2="400" x1="1840" />
            <wire x2="2032" y1="400" y2="400" x1="1936" />
        </branch>
        <bustap x2="1840" y1="448" y2="448" x1="1744" />
        <branch name="SW_OK(7:5),SW_OK(15),SW_OK(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="448" type="branch" />
            <wire x2="1936" y1="448" y2="448" x1="1840" />
            <wire x2="2032" y1="448" y2="448" x1="1936" />
        </branch>
        <bustap x2="2112" y1="1120" y2="1120" x1="2016" />
        <branch name="SW_OK(7:5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2352" y="1120" type="branch" />
            <wire x2="2352" y1="1120" y2="1120" x1="2112" />
            <wire x2="2592" y1="1120" y2="1120" x1="2352" />
        </branch>
        <branch name="XLXN_132(63:0)">
            <wire x2="2592" y1="1184" y2="1184" x1="2304" />
        </branch>
        <branch name="XLXN_133(63:0)">
            <wire x2="2592" y1="1232" y2="1232" x1="2336" />
        </branch>
        <branch name="XLXN_134(31:0)">
            <wire x2="2592" y1="1376" y2="1376" x1="2336" />
        </branch>
        <branch name="XLXN_135(31:0)">
            <wire x2="2592" y1="1424" y2="1424" x1="2336" />
        </branch>
        <branch name="XLXN_136(31:0)">
            <wire x2="2592" y1="1472" y2="1472" x1="2320" />
        </branch>
        <branch name="XLXN_137(31:0)">
            <wire x2="2592" y1="1520" y2="1520" x1="2320" />
        </branch>
        <branch name="XLXN_140">
            <wire x2="2688" y1="272" y2="272" x1="2592" />
        </branch>
        <branch name="XLXN_141">
            <wire x2="2688" y1="304" y2="304" x1="2592" />
        </branch>
        <branch name="XLXN_142">
            <wire x2="2688" y1="352" y2="352" x1="2592" />
        </branch>
        <branch name="XLXN_143">
            <wire x2="2688" y1="416" y2="416" x1="2592" />
        </branch>
    </sheet>
    <sheet sheetnum="2" width="3520" height="2720">
        <instance x="1216" y="784" name="U61" orien="R0">
        </instance>
        <branch name="SEGMENT(7:0)">
            <wire x2="1872" y1="592" y2="592" x1="1568" />
        </branch>
        <branch name="LED(7:0)">
            <wire x2="2112" y1="960" y2="960" x1="1856" />
        </branch>
        <branch name="XLXN_88(2:0)">
            <wire x2="1216" y1="576" y2="576" x1="1056" />
        </branch>
        <branch name="XLXN_89">
            <wire x2="1216" y1="608" y2="608" x1="1056" />
        </branch>
        <branch name="XLXN_90">
            <wire x2="1216" y1="640" y2="640" x1="1056" />
        </branch>
        <branch name="XLXN_91(31:0)">
            <wire x2="1216" y1="688" y2="688" x1="1056" />
        </branch>
        <branch name="XLXN_93(7:0)">
            <wire x2="1216" y1="720" y2="720" x1="1072" />
        </branch>
        <branch name="XLXN_94(7:0)">
            <wire x2="1216" y1="752" y2="752" x1="1056" />
        </branch>
        <branch name="AN(3:0)">
            <wire x2="1856" y1="720" y2="720" x1="1568" />
        </branch>
        <instance x="832" y="1008" name="XLXI_6" orien="R0" />
        <branch name="Buzzer">
            <wire x2="1088" y1="976" y2="976" x1="1056" />
        </branch>
        <branch name="XLXN_105">
            <wire x2="832" y1="976" y2="976" x1="688" />
        </branch>
        <instance x="1376" y="1088" name="U71" orien="R0">
        </instance>
        <branch name="XLXN_86(31:0)">
            <wire x2="1408" y1="1056" y2="1056" x1="832" />
        </branch>
        <iomarker fontsize="28" x="1856" y="720" name="AN(3:0)" orien="R0" />
        <iomarker fontsize="28" x="1872" y="592" name="SEGMENT(7:0)" orien="R0" />
        <iomarker fontsize="28" x="2112" y="960" name="LED(7:0)" orien="R0" />
        <iomarker fontsize="28" x="1088" y="976" name="Buzzer" orien="R0" />
        <branch name="XLXN_121">
            <wire x2="1408" y1="864" y2="864" x1="848" />
        </branch>
        <branch name="XLXN_138">
            <wire x2="1408" y1="928" y2="928" x1="1280" />
        </branch>
        <branch name="XLXN_139">
            <wire x2="1408" y1="992" y2="992" x1="1296" />
        </branch>
    </sheet>
</drawing>