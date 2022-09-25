<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="inst_field(25:0)" />
        <signal name="inst_field(25:21)" />
        <signal name="XLXN_6(4:0)" />
        <signal name="inst_field(15:11)" />
        <signal name="RegDst" />
        <signal name="XLXN_10(31:0)" />
        <signal name="DatatoReg(1:0)" />
        <signal name="Data_in(31:0)" />
        <signal name="inst_field(15:0)" />
        <signal name="rst" />
        <signal name="clk" />
        <signal name="V5" />
        <signal name="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,V5,N0,N0" />
        <signal name="PC_out(31:0)" />
        <signal name="pc_4(31:0)" />
        <signal name="XLXN_24(31:0)" />
        <signal name="Imm_32(29:0),NO,NO" />
        <signal name="XLXN_32(31:0)" />
        <signal name="Branch(1:0)" />
        <signal name="ALU_Control(2:0)" />
        <signal name="ALUSrc_B" />
        <signal name="RegWrite" />
        <signal name="NO" />
        <signal name="ALU_out(31:0)" />
        <signal name="Data_out(31:0)" />
        <signal name="Imm_32(31:0)" />
        <signal name="XLXN_53(31:0)" />
        <signal name="XLXN_54(31:0)" />
        <signal name="inst_field(20:16)" />
        <signal name="XLXN_56(4:0)" />
        <signal name="V5,V5,V5,V5,V5" />
        <signal name="Jal" />
        <signal name="XLXN_59(4:0)" />
        <signal name="XLXN_60" />
        <signal name="pc_4(31:28),inst_field(25:0),NO,NO" />
        <signal name="XLXN_65" />
        <signal name="XLXN_68(31:0)" />
        <signal name="XLXN_69(31:0)" />
        <signal name="inst_field(15:0),N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0" />
        <signal name="zero" />
        <signal name="overflow" />
        <signal name="XLXN_75(31:0)" />
        <signal name="XLXN_76(31:0)" />
        <signal name="XLXN_77(31:0)" />
        <signal name="XLXN_78(31:0)" />
        <port polarity="Input" name="inst_field(25:0)" />
        <port polarity="Input" name="RegDst" />
        <port polarity="Input" name="DatatoReg(1:0)" />
        <port polarity="Input" name="Data_in(31:0)" />
        <port polarity="Input" name="rst" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="PC_out(31:0)" />
        <port polarity="Input" name="Branch(1:0)" />
        <port polarity="Input" name="ALU_Control(2:0)" />
        <port polarity="Input" name="ALUSrc_B" />
        <port polarity="Input" name="RegWrite" />
        <port polarity="Output" name="ALU_out(31:0)" />
        <port polarity="Output" name="Data_out(31:0)" />
        <port polarity="Input" name="Jal" />
        <port polarity="Output" name="zero" />
        <port polarity="Output" name="overflow" />
        <blockdef name="REG32">
            <timestamp>2016-2-27T5:21:0</timestamp>
            <rect style="fillcolor:rgb(0,255,255);fillstyle:Solid" width="88" x="32" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="32" />
            <line x2="0" y1="-160" y2="-160" x1="32" />
            <line x2="0" y1="-96" y2="-96" x1="32" />
            <line x2="0" y1="-32" y2="-32" style="linewidth:W" x1="32" />
            <line x2="120" y1="-128" y2="-128" style="linewidth:W" x1="144" />
        </blockdef>
        <blockdef name="Regs">
            <timestamp>2018-4-17T10:7:9</timestamp>
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
        <blockdef name="alu">
            <timestamp>2018-4-17T10:6:57</timestamp>
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
        <blockdef name="Ext_32">
            <timestamp>2016-2-27T5:21:0</timestamp>
            <circle style="linewidth:W;linecolor:rgb(255,0,0);linestyle:Dash" r="69" cx="185" cy="-33" />
            <line x2="124" y1="0" y2="0" style="linewidth:W" x1="96" />
            <line x2="272" y1="-64" y2="-64" style="linewidth:W" x1="248" />
            <rect style="linecolor:rgb(255,255,255)" width="128" x="120" y="-80" height="88" />
        </blockdef>
        <blockdef name="add_32">
            <timestamp>2016-2-27T5:21:0</timestamp>
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
        <blockdef name="MUX2T1_32">
            <timestamp>2016-2-27T5:21:0</timestamp>
            <rect width="40" x="12" y="-100" height="100" />
            <line x2="32" y1="-112" y2="-100" x1="32" />
            <line x2="52" y1="-48" y2="-48" style="linewidth:W;linecolor:rgb(0,0,0)" x1="64" />
            <line x2="0" y1="-80" y2="-80" style="linewidth:W" x1="12" />
            <line x2="0" y1="-16" y2="-16" style="linewidth:W" x1="12" />
        </blockdef>
        <blockdef name="MUX2T1_5">
            <timestamp>2016-2-27T5:21:0</timestamp>
            <line x2="16" y1="-80" y2="-72" x1="16" />
            <line x2="4" y1="-48" y2="-48" style="linewidth:W" x1="0" />
            <line x2="4" y1="-16" y2="-16" style="linewidth:W" x1="0" />
            <line x2="28" y1="-32" y2="-32" style="linewidth:W" x1="32" />
            <rect width="24" x="4" y="-72" height="72" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
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
        <blockdef name="MUX4T1_32">
            <timestamp>2019-4-30T8:22:36</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <block symbolname="Ext_32" name="Ext">
            <blockpin signalname="inst_field(15:0)" name="imm_16(15:0)" />
            <blockpin signalname="Imm_32(31:0)" name="Imm_32(31:0)" />
        </block>
        <block symbolname="add_32" name="ADD_PC_4">
            <blockpin signalname="pc_4(31:0)" name="c(31:0)" />
            <blockpin signalname="PC_out(31:0)" name="a(31:0)" />
            <blockpin signalname="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,V5,N0,N0" name="b(31:0)" />
        </block>
        <block symbolname="add_32" name="ADD_Branch">
            <blockpin signalname="XLXN_24(31:0)" name="c(31:0)" />
            <blockpin signalname="pc_4(31:0)" name="a(31:0)" />
            <blockpin signalname="Imm_32(29:0),NO,NO" name="b(31:0)" />
        </block>
        <block symbolname="MUX2T1_5" name="MUXD1">
            <blockpin signalname="inst_field(15:11)" name="I1(4:0)" />
            <blockpin signalname="XLXN_59(4:0)" name="I0(4:0)" />
            <blockpin signalname="XLXN_6(4:0)" name="o(4:0)" />
            <blockpin signalname="RegDst" name="s" />
        </block>
        <block symbolname="MUX2T1_32" name="MUXD3">
            <blockpin signalname="ALUSrc_B" name="s" />
            <blockpin signalname="Data_out(31:0)" name="I0(31:0)" />
            <blockpin signalname="Imm_32(31:0)" name="I1(31:0)" />
            <blockpin signalname="XLXN_54(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="REG32" name="PC">
            <blockpin signalname="XLXN_32(31:0)" name="D(31:0)" />
            <blockpin signalname="V5" name="CE" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="PC_out(31:0)" name="Q(31:0)" />
        </block>
        <block symbolname="alu" name="U1_1">
            <blockpin signalname="zero" name="zero" />
            <blockpin signalname="ALU_out(31:0)" name="res(31:0)" />
            <blockpin signalname="overflow" name="overflow" />
            <blockpin signalname="XLXN_53(31:0)" name="A(31:0)" />
            <blockpin signalname="XLXN_54(31:0)" name="B(31:0)" />
            <blockpin signalname="ALU_Control(2:0)" name="ALU_operation(2:0)" />
        </block>
        <block symbolname="Regs" name="U2_2">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="RegWrite" name="L_S" />
            <blockpin signalname="XLXN_53(31:0)" name="rdata_A(31:0)" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="XLXN_10(31:0)" name="Wt_data(31:0)" />
            <blockpin signalname="Data_out(31:0)" name="rdata_B(31:0)" />
            <blockpin signalname="inst_field(25:21)" name="R_addr_A(4:0)" />
            <blockpin signalname="inst_field(20:16)" name="R_addr_B(4:0)" />
            <blockpin signalname="XLXN_6(4:0)" name="Wt_addr(4:0)" />
        </block>
        <block symbolname="vcc" name="XLXI_15">
            <blockpin signalname="V5" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_16">
            <blockpin signalname="NO" name="G" />
        </block>
        <block symbolname="MUX2T1_5" name="XLXI_17">
            <blockpin signalname="V5,V5,V5,V5,V5" name="I1(4:0)" />
            <blockpin signalname="inst_field(20:16)" name="I0(4:0)" />
            <blockpin signalname="XLXN_59(4:0)" name="o(4:0)" />
            <blockpin signalname="Jal" name="s" />
        </block>
        <block symbolname="MUX4T1_32" name="XLXI_18">
            <blockpin signalname="ALU_out(31:0)" name="I0(31:0)" />
            <blockpin signalname="Data_in(31:0)" name="I1(31:0)" />
            <blockpin signalname="inst_field(15:0),N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0" name="I2(31:0)" />
            <blockpin signalname="pc_4(31:0)" name="I3(31:0)" />
            <blockpin signalname="DatatoReg(1:0)" name="s(1:0)" />
            <blockpin signalname="XLXN_10(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="MUX4T1_32" name="XLXI_19">
            <blockpin signalname="pc_4(31:0)" name="I0(31:0)" />
            <blockpin signalname="XLXN_24(31:0)" name="I1(31:0)" />
            <blockpin signalname="pc_4(31:28),inst_field(25:0),NO,NO" name="I2(31:0)" />
            <blockpin signalname="XLXN_53(31:0)" name="I3(31:0)" />
            <blockpin signalname="Branch(1:0)" name="s(1:0)" />
            <blockpin signalname="XLXN_32(31:0)" name="o(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1616" y="944" name="ADD_PC_4" orien="R0">
        </instance>
        <instance x="1312" y="1760" name="U2_2" orien="R0">
        </instance>
        <branch name="inst_field(25:0)">
            <wire x2="480" y1="1440" y2="1440" x1="416" />
            <wire x2="480" y1="1440" y2="1488" x1="480" />
            <wire x2="480" y1="1488" y2="1584" x1="480" />
            <wire x2="480" y1="1584" y2="2032" x1="480" />
            <wire x2="480" y1="2032" y2="2080" x1="480" />
        </branch>
        <bustap x2="576" y1="1440" y2="1440" x1="480" />
        <iomarker fontsize="28" x="416" y="1440" name="inst_field(25:0)" orien="R180" />
        <branch name="inst_field(25:21)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="818" y="1440" type="branch" />
            <wire x2="818" y1="1440" y2="1440" x1="576" />
            <wire x2="1312" y1="1440" y2="1440" x1="818" />
        </branch>
        <bustap x2="576" y1="1488" y2="1488" x1="480" />
        <instance x="1200" y="1600" name="MUXD1" orien="R0">
        </instance>
        <branch name="XLXN_6(4:0)">
            <wire x2="1312" y1="1568" y2="1568" x1="1232" />
        </branch>
        <bustap x2="576" y1="1584" y2="1584" x1="480" />
        <branch name="inst_field(15:11)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="889" y="1584" type="branch" />
            <wire x2="1200" y1="1584" y2="1584" x1="576" />
        </branch>
        <branch name="RegDst">
            <wire x2="1216" y1="1408" y2="1408" x1="416" />
            <wire x2="1216" y1="1408" y2="1520" x1="1216" />
        </branch>
        <iomarker fontsize="28" x="416" y="1408" name="RegDst" orien="R180" />
        <branch name="XLXN_10(31:0)">
            <wire x2="1312" y1="1712" y2="1712" x1="1200" />
        </branch>
        <branch name="Data_in(31:0)">
            <wire x2="816" y1="1776" y2="1776" x1="432" />
        </branch>
        <bustap x2="576" y1="2032" y2="2032" x1="480" />
        <branch name="inst_field(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1073" y="2032" type="branch" />
            <wire x2="1472" y1="2032" y2="2032" x1="576" />
        </branch>
        <instance x="880" y="944" name="PC" orien="R0">
        </instance>
        <branch name="rst">
            <wire x2="480" y1="784" y2="784" x1="464" />
            <wire x2="480" y1="784" y2="1392" x1="480" />
            <wire x2="1312" y1="1392" y2="1392" x1="480" />
            <wire x2="880" y1="784" y2="784" x1="480" />
        </branch>
        <iomarker fontsize="28" x="464" y="784" name="rst" orien="R180" />
        <branch name="clk">
            <wire x2="528" y1="720" y2="720" x1="480" />
            <wire x2="880" y1="720" y2="720" x1="528" />
            <wire x2="528" y1="720" y2="1344" x1="528" />
            <wire x2="1312" y1="1344" y2="1344" x1="528" />
        </branch>
        <iomarker fontsize="28" x="480" y="720" name="clk" orien="R180" />
        <branch name="V5">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="731" y="544" type="branch" />
            <wire x2="800" y1="544" y2="544" x1="672" />
            <wire x2="800" y1="544" y2="848" x1="800" />
            <wire x2="880" y1="848" y2="848" x1="800" />
            <wire x2="1168" y1="544" y2="544" x1="800" />
            <wire x2="1168" y1="544" y2="928" x1="1168" />
            <wire x2="1328" y1="928" y2="928" x1="1168" />
        </branch>
        <instance x="608" y="544" name="XLXI_15" orien="R0" />
        <branch name="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,V5,N0,N0">
            <wire x2="1616" y1="928" y2="928" x1="1424" />
        </branch>
        <bustap x2="1328" y1="928" y2="928" x1="1424" />
        <branch name="PC_out(31:0)">
            <wire x2="1552" y1="816" y2="816" x1="1024" />
            <wire x2="1552" y1="816" y2="896" x1="1552" />
            <wire x2="1616" y1="896" y2="896" x1="1552" />
            <wire x2="1888" y1="816" y2="816" x1="1552" />
            <wire x2="1888" y1="768" y2="816" x1="1888" />
            <wire x2="2848" y1="768" y2="768" x1="1888" />
        </branch>
        <instance x="1904" y="1008" name="ADD_Branch" orien="R0">
        </instance>
        <branch name="pc_4(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1782" y="912" type="branch" />
            <wire x2="1856" y1="912" y2="912" x1="1712" />
            <wire x2="1856" y1="912" y2="960" x1="1856" />
            <wire x2="1904" y1="960" y2="960" x1="1856" />
            <wire x2="2112" y1="912" y2="912" x1="1856" />
            <wire x2="2240" y1="864" y2="864" x1="2112" />
            <wire x2="2112" y1="864" y2="912" x1="2112" />
        </branch>
        <branch name="XLXN_24(31:0)">
            <wire x2="2112" y1="976" y2="976" x1="2000" />
            <wire x2="2240" y1="928" y2="928" x1="2112" />
            <wire x2="2112" y1="928" y2="976" x1="2112" />
        </branch>
        <branch name="Imm_32(29:0),NO,NO">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="416" y="992" type="branch" />
            <wire x2="1904" y1="992" y2="992" x1="416" />
        </branch>
        <instance x="2080" y="1664" name="U1_1" orien="R0">
        </instance>
        <branch name="Branch(1:0)">
            <wire x2="2240" y1="1120" y2="1120" x1="368" />
        </branch>
        <branch name="ALU_Control(2:0)">
            <wire x2="2320" y1="1168" y2="1168" x1="368" />
            <wire x2="2320" y1="1168" y2="1280" x1="2320" />
        </branch>
        <iomarker fontsize="28" x="368" y="1168" name="ALU_Control(2:0)" orien="R180" />
        <instance x="1920" y="1728" name="MUXD3" orien="R0">
        </instance>
        <branch name="ALUSrc_B">
            <wire x2="400" y1="1216" y2="1216" x1="384" />
            <wire x2="400" y1="1200" y2="1216" x1="400" />
            <wire x2="1952" y1="1200" y2="1200" x1="400" />
            <wire x2="1952" y1="1200" y2="1616" x1="1952" />
        </branch>
        <iomarker fontsize="28" x="384" y="1216" name="ALUSrc_B" orien="R180" />
        <iomarker fontsize="28" x="368" y="1120" name="Branch(1:0)" orien="R180" />
        <branch name="RegWrite">
            <wire x2="1552" y1="1248" y2="1248" x1="400" />
            <wire x2="1552" y1="1248" y2="1264" x1="1552" />
        </branch>
        <iomarker fontsize="28" x="400" y="1248" name="RegWrite" orien="R180" />
        <iomarker fontsize="28" x="2848" y="768" name="PC_out(31:0)" orien="R0" />
        <branch name="NO">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2944" y="624" type="branch" />
            <wire x2="2944" y1="624" y2="624" x1="2720" />
        </branch>
        <instance x="2656" y="752" name="XLXI_16" orien="R0" />
        <branch name="ALU_out(31:0)">
            <wire x2="608" y1="1712" y2="2160" x1="608" />
            <wire x2="2768" y1="2160" y2="2160" x1="608" />
            <wire x2="816" y1="1712" y2="1712" x1="608" />
            <wire x2="2768" y1="1520" y2="1520" x1="2528" />
            <wire x2="2880" y1="1520" y2="1520" x1="2768" />
            <wire x2="2768" y1="1520" y2="2160" x1="2768" />
        </branch>
        <iomarker fontsize="28" x="2880" y="1520" name="ALU_out(31:0)" orien="R0" />
        <branch name="Data_out(31:0)">
            <wire x2="1856" y1="1648" y2="1648" x1="1792" />
            <wire x2="1920" y1="1648" y2="1648" x1="1856" />
            <wire x2="1856" y1="1648" y2="2256" x1="1856" />
            <wire x2="2832" y1="2256" y2="2256" x1="1856" />
        </branch>
        <branch name="Imm_32(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1784" y="1968" type="branch" />
            <wire x2="1904" y1="1968" y2="1968" x1="1648" />
            <wire x2="1920" y1="1712" y2="1712" x1="1904" />
            <wire x2="1904" y1="1712" y2="1968" x1="1904" />
        </branch>
        <instance x="1376" y="2032" name="Ext" orien="R0">
        </instance>
        <branch name="XLXN_53(31:0)">
            <wire x2="1872" y1="1376" y2="1376" x1="1792" />
            <wire x2="2080" y1="1376" y2="1376" x1="1872" />
            <wire x2="1984" y1="1088" y2="1088" x1="1872" />
            <wire x2="2208" y1="1088" y2="1088" x1="1984" />
            <wire x2="1872" y1="1088" y2="1376" x1="1872" />
            <wire x2="2208" y1="1056" y2="1088" x1="2208" />
            <wire x2="2240" y1="1056" y2="1056" x1="2208" />
        </branch>
        <branch name="XLXN_54(31:0)">
            <wire x2="2080" y1="1680" y2="1680" x1="1984" />
        </branch>
        <iomarker fontsize="28" x="2832" y="2256" name="Data_out(31:0)" orien="R0" />
        <branch name="inst_field(20:16)">
            <wire x2="912" y1="1488" y2="1488" x1="576" />
            <wire x2="1312" y1="1488" y2="1488" x1="912" />
            <wire x2="912" y1="1488" y2="1536" x1="912" />
            <wire x2="1008" y1="1536" y2="1536" x1="912" />
        </branch>
        <instance x="1008" y="1584" name="XLXI_17" orien="R0">
        </instance>
        <branch name="V5,V5,V5,V5,V5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="864" y="1568" type="branch" />
            <wire x2="1008" y1="1568" y2="1568" x1="864" />
        </branch>
        <branch name="Jal">
            <wire x2="1024" y1="1360" y2="1360" x1="400" />
            <wire x2="1024" y1="1360" y2="1504" x1="1024" />
        </branch>
        <iomarker fontsize="28" x="400" y="1360" name="Jal" orien="R180" />
        <branch name="XLXN_59(4:0)">
            <wire x2="1200" y1="1552" y2="1552" x1="1040" />
        </branch>
        <branch name="XLXN_32(31:0)">
            <wire x2="880" y1="912" y2="912" x1="800" />
            <wire x2="800" y1="912" y2="1232" x1="800" />
            <wire x2="2736" y1="1232" y2="1232" x1="800" />
            <wire x2="2736" y1="864" y2="864" x1="2624" />
            <wire x2="2736" y1="864" y2="1232" x1="2736" />
        </branch>
        <branch name="pc_4(31:28),inst_field(25:0),NO,NO">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="288" y="1040" type="branch" />
            <wire x2="2112" y1="1040" y2="1040" x1="288" />
            <wire x2="2240" y1="992" y2="992" x1="2112" />
            <wire x2="2112" y1="992" y2="1040" x1="2112" />
        </branch>
        <instance x="816" y="2000" name="XLXI_18" orien="R0">
        </instance>
        <iomarker fontsize="28" x="368" y="1968" name="DatatoReg(1:0)" orien="R180" />
        <branch name="DatatoReg(1:0)">
            <wire x2="816" y1="1968" y2="1968" x1="368" />
        </branch>
        <iomarker fontsize="28" x="432" y="1776" name="Data_in(31:0)" orien="R180" />
        <branch name="inst_field(15:0),N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="752" y="1840" type="branch" />
            <wire x2="816" y1="1840" y2="1840" x1="752" />
        </branch>
        <branch name="pc_4(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="752" y="1904" type="branch" />
            <wire x2="816" y1="1904" y2="1904" x1="752" />
        </branch>
        <branch name="zero">
            <wire x2="2592" y1="1456" y2="1456" x1="2528" />
        </branch>
        <branch name="overflow">
            <wire x2="2592" y1="1584" y2="1584" x1="2528" />
        </branch>
        <iomarker fontsize="28" x="2592" y="1584" name="overflow" orien="R0" />
        <iomarker fontsize="28" x="2592" y="1456" name="zero" orien="R0" />
        <instance x="2240" y="1152" name="XLXI_19" orien="R0">
        </instance>
    </sheet>
</drawing>