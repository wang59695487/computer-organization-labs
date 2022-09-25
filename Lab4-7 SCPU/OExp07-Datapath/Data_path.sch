<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="RegDst" />
        <signal name="XLXN_59(4:0)" />
        <signal name="Data_in(31:0)" />
        <signal name="ALUSrc_B" />
        <signal name="RegWrite" />
        <signal name="DatatoReg(1:0)" />
        <signal name="clk" />
        <signal name="rst" />
        <signal name="inst_field(25:21)" />
        <signal name="inst_field(20:16)" />
        <signal name="XLXN_414(31:0)" />
        <signal name="Data_out(31:0)" />
        <signal name="branch_addr(31:0)" />
        <signal name="pc_4(31:0)" />
        <signal name="zero" />
        <signal name="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,V5,N0,N0" />
        <signal name="PC_out(31:0)" />
        <signal name="XLXN_519(31:0)" />
        <signal name="V5" />
        <signal name="ALU_Control(2:0)" />
        <signal name="ALU_out(31:0)" />
        <signal name="XLXN_531(31:0)" />
        <signal name="pc_4(31:28),inst_field(25:0),N0,N0" />
        <signal name="inst_field(25:0)" />
        <signal name="inst_field(15:0)" />
        <signal name="Branch(1:0)" />
        <signal name="Imm_32(31:0)" />
        <signal name="inst_field(15:11)" />
        <signal name="Imm_32(29:0),N0,N0" />
        <signal name="N0" />
        <signal name="XLXN_593(31:0)" />
        <signal name="V5,V5,V5,V5,V5" />
        <signal name="XLXN_598(4:0)" />
        <signal name="Jal" />
        <signal name="inst(15:0),N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0" />
        <port polarity="Input" name="RegDst" />
        <port polarity="Input" name="Data_in(31:0)" />
        <port polarity="Input" name="ALUSrc_B" />
        <port polarity="Input" name="RegWrite" />
        <port polarity="Input" name="DatatoReg(1:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="rst" />
        <port polarity="Output" name="Data_out(31:0)" />
        <port polarity="Output" name="zero" />
        <port polarity="Output" name="PC_out(31:0)" />
        <port polarity="Input" name="ALU_Control(2:0)" />
        <port polarity="Output" name="ALU_out(31:0)" />
        <port polarity="Input" name="inst_field(25:0)" />
        <port polarity="Input" name="Branch(1:0)" />
        <port polarity="Input" name="Jal" />
        <blockdef name="alu">
            <timestamp>2015-6-25T6:1:53</timestamp>
            <line x2="140" y1="-216" y2="-136" style="linewidth:W;linecolor:rgb(255,0,0)" x1="64" />
            <line x2="140" y1="-72" y2="-136" style="linewidth:W;linecolor:rgb(255,0,0)" x1="64" />
            <line x2="64" y1="-72" y2="96" style="linewidth:W;linecolor:rgb(255,0,0)" x1="64" />
            <line x2="384" y1="-48" y2="-232" style="linewidth:W;linecolor:rgb(255,0,0)" x1="384" />
            <line x2="64" y1="-232" y2="-384" style="linewidth:W;linecolor:rgb(255,0,0)" x1="384" />
            <line x2="448" y1="-208" y2="-208" x1="384" />
            <rect width="64" x="384" y="-156" height="24" />
            <line x2="448" y1="-144" y2="-144" x1="384" />
            <line x2="448" y1="-80" y2="-80" x1="384" />
            <line x2="64" y1="-216" y2="-384" style="linewidth:W;linecolor:rgb(255,0,0)" x1="64" />
            <line x2="64" y1="-48" y2="96" style="linewidth:W;linecolor:rgb(255,0,0)" x1="384" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="4" height="24" />
            <line x2="0" y1="16" y2="16" x1="64" />
            <line x2="240" y1="-384" y2="-300" x1="240" />
            <rect width="16" x="232" y="-384" height="84" />
        </blockdef>
        <blockdef name="Regs">
            <timestamp>2014-6-26T7:27:31</timestamp>
            <rect style="linewidth:W;linecolor:rgb(255,0,0);fillcolor:rgb(254,180,229);fillstyle:Solid" width="352" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="240" y1="-496" y2="-448" x1="240" />
            <rect width="64" x="416" y="-396" height="24" />
            <line x2="480" y1="-384" y2="-384" x1="416" />
            <line x2="0" y1="-368" y2="-368" x1="64" />
            <rect width="64" x="0" y="-60" height="24" />
            <line x2="0" y1="-48" y2="-48" x1="64" />
            <rect width="64" x="416" y="-124" height="24" />
            <line x2="480" y1="-112" y2="-112" x1="416" />
            <rect width="64" x="0" y="-332" height="24" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <rect width="64" x="0" y="-284" height="24" />
            <line x2="0" y1="-272" y2="-272" x1="64" />
            <rect width="64" x="0" y="-204" height="24" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="add_32">
            <timestamp>2016-1-3T14:9:4</timestamp>
            <line x2="0" y1="-48" y2="-48" style="linewidth:W" x1="16" />
            <line x2="0" y1="-16" y2="-16" style="linewidth:W" x1="16" />
            <line x2="80" y1="4" y2="-16" x1="16" />
            <line x2="16" y1="-24" y2="4" x1="16" />
            <line x2="28" y1="-24" y2="-32" x1="16" />
            <line x2="28" y1="-40" y2="-32" x1="16" />
            <line x2="16" y1="-40" y2="-68" x1="16" />
            <line x2="80" y1="-68" y2="-48" x1="16" />
            <line x2="80" y1="-48" y2="-16" x1="80" />
            <line x2="96" y1="-32" y2="-32" style="linewidth:W" x1="80" />
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
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="Ext_32">
            <timestamp>2014-6-26T5:42:38</timestamp>
            <circle style="linewidth:W;linecolor:rgb(255,0,0);linestyle:Dash" r="69" cx="185" cy="-33" />
            <line x2="124" y1="0" y2="0" style="linewidth:W" x1="96" />
            <line x2="272" y1="-64" y2="-64" style="linewidth:W" x1="248" />
            <rect style="linecolor:rgb(255,255,255)" width="128" x="120" y="-80" height="88" />
        </blockdef>
        <blockdef name="REG32">
            <timestamp>2016-2-27T5:21:0</timestamp>
            <rect style="fillcolor:rgb(0,255,255);fillstyle:Solid" width="88" x="32" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="32" />
            <line x2="0" y1="-160" y2="-160" x1="32" />
            <line x2="0" y1="-96" y2="-96" x1="32" />
            <line x2="0" y1="-32" y2="-32" style="linewidth:W" x1="32" />
            <line x2="120" y1="-128" y2="-128" style="linewidth:W" x1="144" />
        </blockdef>
        <blockdef name="MUX2T1_32">
            <timestamp>2015-12-29T3:52:31</timestamp>
            <rect width="40" x="12" y="-100" height="100" />
            <line x2="32" y1="-112" y2="-100" x1="32" />
            <line x2="52" y1="-48" y2="-48" style="linewidth:W;linecolor:rgb(0,0,0)" x1="64" />
            <line x2="0" y1="-80" y2="-80" style="linewidth:W" x1="12" />
            <line x2="0" y1="-16" y2="-16" style="linewidth:W" x1="12" />
        </blockdef>
        <blockdef name="MUX2T1_5">
            <timestamp>2015-12-29T14:47:37</timestamp>
            <line x2="16" y1="-80" y2="-72" x1="16" />
            <line x2="4" y1="-48" y2="-48" style="linewidth:W" x1="0" />
            <line x2="4" y1="-16" y2="-16" style="linewidth:W" x1="0" />
            <line x2="28" y1="-32" y2="-32" style="linewidth:W" x1="32" />
            <rect width="24" x="4" y="-72" height="72" />
        </blockdef>
        <blockdef name="MUX4T1_32">
            <timestamp>2016-2-25T15:53:0</timestamp>
            <line x2="0" y1="-80" y2="-80" style="linewidth:W" x1="12" />
            <line x2="0" y1="-48" y2="-48" style="linewidth:W" x1="12" />
            <line x2="0" y1="-16" y2="-16" style="linewidth:W" x1="12" />
            <rect width="40" x="12" y="-136" height="128" />
            <line x2="0" y1="-112" y2="-112" style="linewidth:W" x1="12" />
            <line x2="32" y1="-136" y2="-144" style="linewidth:W" x1="32" />
            <line x2="52" y1="-96" y2="-96" style="linewidth:W;linecolor:rgb(0,0,0)" x1="64" />
        </blockdef>
        <block symbolname="alu" name="U1">
            <blockpin signalname="zero" name="zero" />
            <blockpin signalname="ALU_out(31:0)" name="res(31:0)" />
            <blockpin name="overflow" />
            <blockpin signalname="XLXN_593(31:0)" name="A(31:0)" />
            <blockpin signalname="XLXN_531(31:0)" name="B(31:0)" />
            <blockpin signalname="ALU_Control(2:0)" name="ALU_operation(2:0)" />
        </block>
        <block symbolname="Regs" name="U2">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="RegWrite" name="L_S" />
            <blockpin signalname="XLXN_593(31:0)" name="rdata_A(31:0)" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="XLXN_414(31:0)" name="Wt_data(31:0)" />
            <blockpin signalname="Data_out(31:0)" name="rdata_B(31:0)" />
            <blockpin signalname="inst_field(25:21)" name="R_addr_A(4:0)" />
            <blockpin signalname="inst_field(20:16)" name="R_addr_B(4:0)" />
            <blockpin signalname="XLXN_59(4:0)" name="Wt_addr(4:0)" />
        </block>
        <block symbolname="add_32" name="ADD_Branch">
            <blockpin signalname="branch_addr(31:0)" name="c(31:0)" />
            <blockpin signalname="pc_4(31:0)" name="a(31:0)" />
            <blockpin signalname="Imm_32(29:0),N0,N0" name="b(31:0)" />
        </block>
        <block symbolname="add_32" name="ADD_PC_4">
            <blockpin signalname="pc_4(31:0)" name="c(31:0)" />
            <blockpin signalname="PC_out(31:0)" name="a(31:0)" />
            <blockpin signalname="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,V5,N0,N0" name="b(31:0)" />
        </block>
        <block symbolname="vcc" name="V">
            <blockpin signalname="V5" name="P" />
        </block>
        <block symbolname="Ext_32" name="Ext">
            <blockpin signalname="inst_field(15:0)" name="imm_16(15:0)" />
            <blockpin signalname="Imm_32(31:0)" name="Imm_32(31:0)" />
        </block>
        <block symbolname="REG32" name="PC">
            <blockpin signalname="XLXN_519(31:0)" name="D(31:0)" />
            <blockpin signalname="V5" name="CE" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="PC_out(31:0)" name="Q(31:0)" />
        </block>
        <block symbolname="MUX2T1_32" name="MUXD3">
            <blockpin signalname="ALUSrc_B" name="s" />
            <blockpin signalname="Data_out(31:0)" name="I0(31:0)" />
            <blockpin signalname="Imm_32(31:0)" name="I1(31:0)" />
            <blockpin signalname="XLXN_531(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="MUX2T1_5" name="MUXD1">
            <blockpin signalname="inst_field(15:11)" name="I1(4:0)" />
            <blockpin signalname="XLXN_598(4:0)" name="I0(4:0)" />
            <blockpin signalname="XLXN_59(4:0)" name="o(4:0)" />
            <blockpin signalname="RegDst" name="s" />
        </block>
        <block symbolname="gnd" name="NO">
            <blockpin signalname="N0" name="G" />
        </block>
        <block symbolname="MUX4T1_32" name="XLXI_39">
            <blockpin signalname="Branch(1:0)" name="s(1:0)" />
            <blockpin signalname="pc_4(31:0)" name="I0(31:0)" />
            <blockpin signalname="branch_addr(31:0)" name="I1(31:0)" />
            <blockpin signalname="pc_4(31:28),inst_field(25:0),N0,N0" name="I2(31:0)" />
            <blockpin signalname="XLXN_593(31:0)" name="I3(31:0)" />
            <blockpin signalname="XLXN_519(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="MUX4T1_32" name="XLXI_40">
            <blockpin signalname="DatatoReg(1:0)" name="s(1:0)" />
            <blockpin signalname="ALU_out(31:0)" name="I0(31:0)" />
            <blockpin signalname="Data_in(31:0)" name="I1(31:0)" />
            <blockpin signalname="inst(15:0),N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0" name="I2(31:0)" />
            <blockpin signalname="pc_4(31:0)" name="I3(31:0)" />
            <blockpin signalname="XLXN_414(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="MUX2T1_5" name="XLXI_41">
            <blockpin signalname="V5,V5,V5,V5,V5" name="I1(4:0)" />
            <blockpin signalname="inst_field(20:16)" name="I0(4:0)" />
            <blockpin signalname="XLXN_598(4:0)" name="o(4:0)" />
            <blockpin signalname="Jal" name="s" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="2720" height="1760">
        <instance x="768" y="1216" name="U2" orien="R0">
            <attrtext style="fontsize:58;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="160" y="-368" type="instance" />
        </instance>
        <branch name="XLXN_59(4:0)">
            <wire x2="768" y1="1024" y2="1024" x1="704" />
        </branch>
        <instance x="1472" y="1120" name="U1" orien="R0">
            <attrtext style="alignment:BCENTER;fontsize:68;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="16" y="-96" type="instance" />
        </instance>
        <branch name="ALUSrc_B">
            <wire x2="1376" y1="672" y2="672" x1="192" />
            <wire x2="1376" y1="672" y2="1072" x1="1376" />
        </branch>
        <branch name="RegDst">
            <wire x2="688" y1="832" y2="832" x1="160" />
            <wire x2="688" y1="832" y2="976" x1="688" />
        </branch>
        <branch name="XLXN_414(31:0)">
            <wire x2="768" y1="1168" y2="1168" x1="720" />
        </branch>
        <branch name="Data_out(31:0)">
            <wire x2="1312" y1="1104" y2="1104" x1="1248" />
            <wire x2="1344" y1="1104" y2="1104" x1="1312" />
            <wire x2="1312" y1="1104" y2="1472" x1="1312" />
            <wire x2="2160" y1="1472" y2="1472" x1="1312" />
        </branch>
        <iomarker fontsize="28" x="2144" y="976" name="ALU_out(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2160" y="1472" name="Data_out(31:0)" orien="R0" />
        <text style="fontsize:58;fontname:Arial;textcolor:rgb(255,0,0)" x="1024" y="384">4</text>
        <iomarker fontsize="28" x="160" y="832" name="RegDst" orien="R180" />
        <iomarker fontsize="28" x="192" y="672" name="ALUSrc_B" orien="R180" />
        <iomarker fontsize="28" x="272" y="608" name="ALU_Control(2:0)" orien="R180" />
        <branch name="XLXN_519(31:0)">
            <wire x2="528" y1="368" y2="368" x1="448" />
            <wire x2="448" y1="368" y2="512" x1="448" />
            <wire x2="1776" y1="512" y2="512" x1="448" />
            <wire x2="1776" y1="368" y2="368" x1="1760" />
            <wire x2="1776" y1="368" y2="512" x1="1776" />
        </branch>
        <branch name="rst">
            <wire x2="320" y1="240" y2="240" x1="80" />
            <wire x2="320" y1="240" y2="848" x1="320" />
            <wire x2="768" y1="848" y2="848" x1="320" />
            <wire x2="528" y1="240" y2="240" x1="320" />
        </branch>
        <branch name="clk">
            <wire x2="368" y1="176" y2="176" x1="80" />
            <wire x2="368" y1="176" y2="800" x1="368" />
            <wire x2="768" y1="800" y2="800" x1="368" />
            <wire x2="528" y1="176" y2="176" x1="368" />
        </branch>
        <bustap x2="480" y1="896" y2="896" x1="384" />
        <bustap x2="480" y1="944" y2="944" x1="384" />
        <text x="468" y="884">rs=inst_field(25:21)</text>
        <text x="476" y="932">rt=inst_field(20:16)</text>
        <bustap x2="912" y1="352" y2="352" x1="1008" />
        <iomarker fontsize="28" x="240" y="896" name="inst_field(25:0)" orien="R180" />
        <branch name="ALU_Control(2:0)">
            <wire x2="1712" y1="608" y2="608" x1="272" />
            <wire x2="1712" y1="608" y2="736" x1="1712" />
        </branch>
        <branch name="ALU_out(31:0)">
            <wire x2="592" y1="1152" y2="1408" x1="592" />
            <wire x2="1984" y1="1408" y2="1408" x1="592" />
            <wire x2="656" y1="1152" y2="1152" x1="592" />
            <wire x2="1984" y1="976" y2="976" x1="1920" />
            <wire x2="2144" y1="976" y2="976" x1="1984" />
            <wire x2="1984" y1="976" y2="1408" x1="1984" />
        </branch>
        <branch name="XLXN_531(31:0)">
            <wire x2="1472" y1="1136" y2="1136" x1="1408" />
        </branch>
        <branch name="inst_field(25:21)">
            <wire x2="768" y1="896" y2="896" x1="480" />
        </branch>
        <text style="fontsize:20;fontname:Arial;textcolor:rgb(255,0,0)" x="96" y="1596">Branch_offset=Imm_32,N0,N0</text>
        <text style="fontsize:20;fontname:Arial;textcolor:rgb(255,0,0)" x="92" y="1636">Jump_addr=pc_4(31:28),inst_field(25:0),N0,N0</text>
        <branch name="zero">
            <wire x2="2080" y1="912" y2="912" x1="1920" />
        </branch>
        <branch name="inst_field(25:0)">
            <wire x2="336" y1="896" y2="896" x1="240" />
            <wire x2="384" y1="896" y2="896" x1="336" />
            <wire x2="336" y1="896" y2="944" x1="336" />
            <wire x2="384" y1="944" y2="944" x1="336" />
            <wire x2="336" y1="944" y2="1040" x1="336" />
            <wire x2="384" y1="1040" y2="1040" x1="336" />
            <wire x2="336" y1="1040" y2="1344" x1="336" />
            <wire x2="400" y1="1344" y2="1344" x1="336" />
        </branch>
        <text style="fontsize:20;fontname:Arial;textcolor:rgb(255,0,0)" x="96" y="1556">Imm_32=inst_field(15),inst_field(15),inst_field(15),inst_field(15),inst_field(15),inst_field(15),inst_field(15),inst_field(15),inst_field(15),inst_field(15),inst_field(15),inst_field(15),inst_field(15),inst_field(15),inst_field(15),inst_field(15),inst_field(15:0)</text>
        <bustap x2="496" y1="1344" y2="1344" x1="400" />
        <branch name="inst_field(15:0)">
            <wire x2="896" y1="1344" y2="1344" x1="496" />
        </branch>
        <instance x="800" y="1344" name="Ext" orien="R0">
        </instance>
        <branch name="Branch(1:0)">
            <wire x2="1728" y1="128" y2="128" x1="192" />
            <wire x2="1728" y1="128" y2="320" x1="1728" />
        </branch>
        <text style="fontsize:26;fontname:Courier New;textcolor:rgb(255,0,0)" x="1160" y="1256">Imm_32</text>
        <text style="fontsize:26;fontname:Courier New;textcolor:rgb(255,0,0)" x="476" y="1320">Imm_16</text>
        <text style="fontsize:26;fontname:Courier New" x="1224" y="316">PC+4</text>
        <branch name="RegWrite">
            <wire x2="1008" y1="720" y2="720" x1="176" />
        </branch>
        <iomarker fontsize="28" x="176" y="720" name="RegWrite" orien="R180" />
        <branch name="Imm_32(31:0)">
            <wire x2="1264" y1="1280" y2="1280" x1="1072" />
            <wire x2="1264" y1="1168" y2="1280" x1="1264" />
            <wire x2="1344" y1="1168" y2="1168" x1="1264" />
        </branch>
        <branch name="V5">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="448" y="96" type="branch" />
            <wire x2="448" y1="96" y2="96" x1="400" />
            <wire x2="496" y1="96" y2="96" x1="448" />
            <wire x2="496" y1="96" y2="304" x1="496" />
            <wire x2="528" y1="304" y2="304" x1="496" />
            <wire x2="768" y1="96" y2="96" x1="496" />
            <wire x2="768" y1="96" y2="352" x1="768" />
            <wire x2="912" y1="352" y2="352" x1="768" />
        </branch>
        <branch name="pc_4(31:28),inst_field(25:0),N0,N0">
            <wire x2="1600" y1="448" y2="448" x1="192" />
            <wire x2="1696" y1="416" y2="416" x1="1600" />
            <wire x2="1600" y1="416" y2="448" x1="1600" />
        </branch>
        <instance x="672" y="1056" name="MUXD1" orien="R0">
            <attrtext style="fontsize:20;fontname:Arial" attrname="InstName" x="-16" y="16" type="instance" />
        </instance>
        <bustap x2="480" y1="1040" y2="1040" x1="384" />
        <branch name="inst_field(15:11)">
            <wire x2="672" y1="1040" y2="1040" x1="480" />
        </branch>
        <branch name="Data_in(31:0)">
            <wire x2="656" y1="1184" y2="1184" x1="224" />
        </branch>
        <text style="fontsize:26;fontname:Courier New;textcolor:rgb(255,0,0)" x="24" y="452">Jump_addr</text>
        <text style="fontsize:26;fontname:Courier New;textcolor:rgb(255,0,0)" x="20" y="416">Branch_offset</text>
        <instance x="336" y="96" name="V" orien="R0" />
        <instance x="528" y="400" name="PC" orien="R0">
            <attrtext style="fontsize:48;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="48" y="-192" type="instance" />
        </instance>
        <iomarker fontsize="28" x="80" y="176" name="clk" orien="R180" />
        <iomarker fontsize="28" x="80" y="240" name="rst" orien="R180" />
        <iomarker fontsize="28" x="2144" y="272" name="PC_out(31:0)" orien="R0" />
        <text style="fontsize:26;fontname:Courier New" x="1424" y="380">Branch_pc</text>
        <instance x="1344" y="1184" name="MUXD3" orien="R0">
            <attrtext style="fontsize:20;fontname:Arial" attrname="InstName" x="0" y="16" type="instance" />
        </instance>
        <text style="fontsize:20;fontname:Arial;textcolor:rgb(255,0,0)" x="88" y="1676">4 = N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,V5,N0,N0</text>
        <instance x="1936" y="176" name="NO" orien="R0" />
        <branch name="N0">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2064" y="32" type="branch" />
            <wire x2="2000" y1="32" y2="48" x1="2000" />
            <wire x2="2064" y1="32" y2="32" x1="2000" />
        </branch>
        <iomarker fontsize="28" x="2080" y="912" name="zero" orien="R0" />
        <branch name="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,V5,N0,N0">
            <wire x2="1104" y1="352" y2="352" x1="1008" />
        </branch>
        <branch name="PC_out(31:0)">
            <wire x2="1040" y1="272" y2="272" x1="672" />
            <wire x2="1040" y1="272" y2="320" x1="1040" />
            <wire x2="1104" y1="320" y2="320" x1="1040" />
            <wire x2="2144" y1="272" y2="272" x1="1040" />
        </branch>
        <instance x="1104" y="368" name="ADD_PC_4" orien="R0">
        </instance>
        <branch name="pc_4(31:0)">
            <wire x2="656" y1="1248" y2="1248" x1="624" />
            <wire x2="624" y1="1248" y2="1472" x1="624" />
            <wire x2="1296" y1="1472" y2="1472" x1="624" />
            <wire x2="1296" y1="336" y2="336" x1="1200" />
            <wire x2="1600" y1="336" y2="336" x1="1296" />
            <wire x2="1600" y1="336" y2="352" x1="1600" />
            <wire x2="1696" y1="352" y2="352" x1="1600" />
            <wire x2="1296" y1="336" y2="384" x1="1296" />
            <wire x2="1312" y1="384" y2="384" x1="1296" />
            <wire x2="1296" y1="384" y2="1472" x1="1296" />
        </branch>
        <instance x="1312" y="432" name="ADD_Branch" orien="R0">
        </instance>
        <branch name="Imm_32(29:0),N0,N0">
            <wire x2="1312" y1="416" y2="416" x1="240" />
        </branch>
        <branch name="branch_addr(31:0)">
            <wire x2="1600" y1="400" y2="400" x1="1408" />
            <wire x2="1696" y1="384" y2="384" x1="1600" />
            <wire x2="1600" y1="384" y2="400" x1="1600" />
        </branch>
        <instance x="1696" y="464" name="XLXI_39" orien="R0">
        </instance>
        <branch name="XLXN_593(31:0)">
            <wire x2="1424" y1="832" y2="832" x1="1248" />
            <wire x2="1472" y1="832" y2="832" x1="1424" />
            <wire x2="1424" y1="640" y2="832" x1="1424" />
            <wire x2="1664" y1="640" y2="640" x1="1424" />
            <wire x2="1696" y1="448" y2="448" x1="1664" />
            <wire x2="1664" y1="448" y2="640" x1="1664" />
        </branch>
        <iomarker fontsize="28" x="192" y="128" name="Branch(1:0)" orien="R180" />
        <text x="464" y="1060">rd=inst_field(15:11)</text>
        <branch name="inst_field(20:16)">
            <wire x2="512" y1="944" y2="944" x1="480" />
            <wire x2="512" y1="944" y2="992" x1="512" />
            <wire x2="560" y1="992" y2="992" x1="512" />
            <wire x2="768" y1="944" y2="944" x1="512" />
        </branch>
        <branch name="XLXN_598(4:0)">
            <wire x2="672" y1="1008" y2="1008" x1="592" />
        </branch>
        <branch name="Jal">
            <wire x2="576" y1="768" y2="768" x1="144" />
            <wire x2="576" y1="768" y2="960" x1="576" />
        </branch>
        <iomarker fontsize="28" x="144" y="768" name="Jal" orien="R180" />
        <instance x="560" y="1040" name="XLXI_41" orien="R0">
        </instance>
        <branch name="V5,V5,V5,V5,V5">
            <wire x2="560" y1="1024" y2="1024" x1="528" />
        </branch>
        <instance x="656" y="1264" name="XLXI_40" orien="R0">
        </instance>
        <iomarker fontsize="28" x="240" y="1104" name="DatatoReg(1:0)" orien="R180" />
        <branch name="DatatoReg(1:0)">
            <wire x2="688" y1="1104" y2="1104" x1="240" />
            <wire x2="688" y1="1104" y2="1120" x1="688" />
        </branch>
        <iomarker fontsize="28" x="224" y="1184" name="Data_in(31:0)" orien="R180" />
        <branch name="inst(15:0),N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0">
            <wire x2="656" y1="1216" y2="1216" x1="576" />
        </branch>
    </sheet>
</drawing>