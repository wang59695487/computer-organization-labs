<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="rst" />
        <signal name="N0" />
        <signal name="V5" />
        <signal name="PC_out(31:0)" />
        <signal name="pc_4(31:0)" />
        <signal name="branch_addr(31:0)" />
        <signal name="XLXN_13(31:0)" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15(31:0)" />
        <signal name="pc_4(31:28),inst_field(25:0),N0,N0" />
        <signal name="Imm_32(29:0),N0,N0" />
        <signal name="Jump" />
        <signal name="XLXN_19" />
        <signal name="ALU_out(31:0)" />
        <signal name="Branch" />
        <signal name="ALU_Control(2:0)" />
        <signal name="XLXN_23(31:0)" />
        <signal name="Data_out(31:0)" />
        <signal name="XLXN_25(31:0)" />
        <signal name="Imm_32(31:0)" />
        <signal name="ALUSrc_B" />
        <signal name="RegWrite" />
        <signal name="RegDst" />
        <signal name="inst_field(20:16)" />
        <signal name="inst_field(25:21)" />
        <signal name="inst_field(15:11)" />
        <signal name="inst_field(25:0)" />
        <signal name="inst_field(15:0)" />
        <signal name="Wt_addr(4:0)" />
        <signal name="Data_in(31:0)" />
        <signal name="XLXN_44(31:0)" />
        <signal name="MemtoReg" />
        <signal name="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,V5,N0,N0" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="rst" />
        <port polarity="Output" name="PC_out(31:0)" />
        <port polarity="Input" name="Jump" />
        <port polarity="Output" name="ALU_out(31:0)" />
        <port polarity="Input" name="Branch" />
        <port polarity="Input" name="ALU_Control(2:0)" />
        <port polarity="Output" name="Data_out(31:0)" />
        <port polarity="Input" name="ALUSrc_B" />
        <port polarity="Input" name="RegWrite" />
        <port polarity="Input" name="RegDst" />
        <port polarity="Input" name="inst_field(25:0)" />
        <port polarity="Input" name="Data_in(31:0)" />
        <port polarity="Input" name="MemtoReg" />
        <blockdef name="Regs">
            <timestamp>2016-2-27T5:21:0</timestamp>
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
        <blockdef name="MUX2T1_32">
            <timestamp>2016-2-27T5:21:0</timestamp>
            <rect width="40" x="12" y="-100" height="100" />
            <line x2="32" y1="-112" y2="-100" x1="32" />
            <line x2="52" y1="-48" y2="-48" style="linewidth:W;linecolor:rgb(0,0,0)" x1="64" />
            <line x2="0" y1="-80" y2="-80" style="linewidth:W" x1="12" />
            <line x2="0" y1="-16" y2="-16" style="linewidth:W" x1="12" />
        </blockdef>
        <blockdef name="MUX2T1_5">
            <timestamp>2016-2-25T15:53:0</timestamp>
            <line x2="16" y1="-80" y2="-72" x1="16" />
            <line x2="4" y1="-48" y2="-48" style="linewidth:W" x1="0" />
            <line x2="4" y1="-16" y2="-16" style="linewidth:W" x1="0" />
            <line x2="28" y1="-32" y2="-32" style="linewidth:W" x1="32" />
            <rect width="24" x="4" y="-72" height="72" />
        </blockdef>
        <blockdef name="Ext_32">
            <timestamp>2016-2-27T5:21:0</timestamp>
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
        <blockdef name="alu">
            <timestamp>2016-2-27T5:21:0</timestamp>
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
        <blockdef name="add_32">
            <timestamp>2016-2-25T15:53:0</timestamp>
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
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
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
        <block symbolname="Regs" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="RegWrite" name="L_S" />
            <blockpin signalname="XLXN_23(31:0)" name="rdata_A(31:0)" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="XLXN_44(31:0)" name="Wt_data(31:0)" />
            <blockpin signalname="Data_out(31:0)" name="rdata_B(31:0)" />
            <blockpin signalname="inst_field(25:21)" name="R_addr_A(4:0)" />
            <blockpin signalname="inst_field(20:16)" name="R_addr_B(4:0)" />
            <blockpin signalname="Wt_addr(4:0)" name="Wt_addr(4:0)" />
        </block>
        <block symbolname="MUX2T1_32" name="XLXI_3">
            <blockpin signalname="MemtoReg" name="s" />
            <blockpin signalname="ALU_out(31:0)" name="I0(31:0)" />
            <blockpin signalname="Data_in(31:0)" name="I1(31:0)" />
            <blockpin signalname="XLXN_44(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="MUX2T1_5" name="XLXI_4">
            <blockpin signalname="inst_field(15:11)" name="I1(4:0)" />
            <blockpin signalname="inst_field(20:16)" name="I0(4:0)" />
            <blockpin signalname="Wt_addr(4:0)" name="o(4:0)" />
            <blockpin signalname="RegDst" name="s" />
        </block>
        <block symbolname="Ext_32" name="XLXI_5">
            <blockpin signalname="inst_field(15:0)" name="imm_16(15:0)" />
            <blockpin signalname="Imm_32(31:0)" name="Imm_32(31:0)" />
        </block>
        <block symbolname="MUX2T1_32" name="XLXI_6">
            <blockpin signalname="ALUSrc_B" name="s" />
            <blockpin signalname="Data_out(31:0)" name="I0(31:0)" />
            <blockpin signalname="Imm_32(31:0)" name="I1(31:0)" />
            <blockpin signalname="XLXN_25(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="MUX2T1_32" name="XLXI_7">
            <blockpin signalname="XLXN_14" name="s" />
            <blockpin signalname="pc_4(31:0)" name="I0(31:0)" />
            <blockpin signalname="branch_addr(31:0)" name="I1(31:0)" />
            <blockpin signalname="XLXN_13(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="MUX2T1_32" name="XLXI_8">
            <blockpin signalname="Jump" name="s" />
            <blockpin signalname="XLXN_13(31:0)" name="I0(31:0)" />
            <blockpin signalname="pc_4(31:28),inst_field(25:0),N0,N0" name="I1(31:0)" />
            <blockpin signalname="XLXN_15(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="REG32" name="XLXI_9">
            <blockpin signalname="XLXN_15(31:0)" name="D(31:0)" />
            <blockpin signalname="V5" name="CE" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="PC_out(31:0)" name="Q(31:0)" />
        </block>
        <block symbolname="alu" name="XLXI_11">
            <blockpin signalname="XLXN_19" name="zero" />
            <blockpin signalname="ALU_out(31:0)" name="res(31:0)" />
            <blockpin name="overflow" />
            <blockpin signalname="XLXN_23(31:0)" name="A(31:0)" />
            <blockpin signalname="XLXN_25(31:0)" name="B(31:0)" />
            <blockpin signalname="ALU_Control(2:0)" name="ALU_operation(2:0)" />
        </block>
        <block symbolname="add_32" name="XLXI_13">
            <blockpin signalname="pc_4(31:0)" name="c(31:0)" />
            <blockpin signalname="PC_out(31:0)" name="a(31:0)" />
            <blockpin signalname="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,V5,N0,N0" name="b(31:0)" />
        </block>
        <block symbolname="add_32" name="XLXI_14">
            <blockpin signalname="branch_addr(31:0)" name="c(31:0)" />
            <blockpin signalname="pc_4(31:0)" name="a(31:0)" />
            <blockpin signalname="Imm_32(29:0),N0,N0" name="b(31:0)" />
        </block>
        <block symbolname="and2" name="XLXI_15">
            <blockpin signalname="XLXN_19" name="I0" />
            <blockpin signalname="Branch" name="I1" />
            <blockpin signalname="XLXN_14" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_16">
            <blockpin signalname="V5" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_17">
            <blockpin signalname="N0" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1040" y="1808" name="XLXI_1" orien="R0">
        </instance>
        <instance x="848" y="1648" name="XLXI_4" orien="R0">
        </instance>
        <instance x="832" y="1808" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1744" y="1776" name="XLXI_6" orien="R0">
        </instance>
        <instance x="672" y="592" name="XLXI_9" orien="R0">
        </instance>
        <instance x="2368" y="1712" name="XLXI_11" orien="R0">
        </instance>
        <branch name="clk">
            <wire x2="448" y1="368" y2="368" x1="208" />
            <wire x2="672" y1="368" y2="368" x1="448" />
            <wire x2="448" y1="368" y2="1392" x1="448" />
            <wire x2="1040" y1="1392" y2="1392" x1="448" />
        </branch>
        <branch name="rst">
            <wire x2="496" y1="432" y2="432" x1="208" />
            <wire x2="672" y1="432" y2="432" x1="496" />
            <wire x2="496" y1="432" y2="1440" x1="496" />
            <wire x2="1040" y1="1440" y2="1440" x1="496" />
        </branch>
        <instance x="3024" y="304" name="XLXI_17" orien="R0" />
        <branch name="N0">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3248" y="112" type="branch" />
            <wire x2="3088" y1="112" y2="176" x1="3088" />
            <wire x2="3248" y1="112" y2="112" x1="3088" />
        </branch>
        <instance x="1456" y="624" name="XLXI_13" orien="R0">
        </instance>
        <instance x="2304" y="672" name="XLXI_7" orien="R0">
        </instance>
        <instance x="2512" y="704" name="XLXI_8" orien="R0">
        </instance>
        <instance x="3008" y="1088" name="XLXI_15" orien="R270" />
        <branch name="PC_out(31:0)">
            <wire x2="1296" y1="464" y2="464" x1="816" />
            <wire x2="3296" y1="464" y2="464" x1="1296" />
            <wire x2="1296" y1="464" y2="576" x1="1296" />
            <wire x2="1456" y1="576" y2="576" x1="1296" />
        </branch>
        <branch name="pc_4(31:0)">
            <wire x2="1632" y1="592" y2="592" x1="1552" />
            <wire x2="2304" y1="592" y2="592" x1="1632" />
            <wire x2="1632" y1="592" y2="640" x1="1632" />
            <wire x2="1680" y1="640" y2="640" x1="1632" />
        </branch>
        <instance x="1680" y="688" name="XLXI_14" orien="R0">
        </instance>
        <branch name="branch_addr(31:0)">
            <wire x2="2304" y1="656" y2="656" x1="1776" />
        </branch>
        <branch name="XLXN_13(31:0)">
            <wire x2="2512" y1="624" y2="624" x1="2368" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="2336" y1="480" y2="560" x1="2336" />
            <wire x2="2912" y1="480" y2="480" x1="2336" />
            <wire x2="2912" y1="480" y2="832" x1="2912" />
        </branch>
        <branch name="XLXN_15(31:0)">
            <wire x2="672" y1="560" y2="560" x1="592" />
            <wire x2="592" y1="560" y2="784" x1="592" />
            <wire x2="2656" y1="784" y2="784" x1="592" />
            <wire x2="2656" y1="656" y2="656" x1="2576" />
            <wire x2="2656" y1="656" y2="784" x1="2656" />
        </branch>
        <branch name="pc_4(31:28),inst_field(25:0),N0,N0">
            <wire x2="1856" y1="752" y2="752" x1="208" />
            <wire x2="1856" y1="688" y2="752" x1="1856" />
            <wire x2="2512" y1="688" y2="688" x1="1856" />
        </branch>
        <branch name="Imm_32(29:0),N0,N0">
            <wire x2="1680" y1="672" y2="672" x1="208" />
        </branch>
        <branch name="Jump">
            <wire x2="2544" y1="144" y2="144" x1="208" />
            <wire x2="2544" y1="144" y2="592" x1="2544" />
        </branch>
        <iomarker fontsize="28" x="208" y="144" name="Jump" orien="R180" />
        <iomarker fontsize="28" x="208" y="368" name="clk" orien="R180" />
        <iomarker fontsize="28" x="208" y="432" name="rst" orien="R180" />
        <iomarker fontsize="28" x="3296" y="464" name="PC_out(31:0)" orien="R0" />
        <branch name="XLXN_19">
            <wire x2="2944" y1="1504" y2="1504" x1="2816" />
            <wire x2="2944" y1="1088" y2="1504" x1="2944" />
        </branch>
        <branch name="Branch">
            <wire x2="2672" y1="880" y2="880" x1="208" />
            <wire x2="2672" y1="880" y2="1104" x1="2672" />
            <wire x2="2880" y1="1104" y2="1104" x1="2672" />
            <wire x2="2880" y1="1088" y2="1104" x1="2880" />
        </branch>
        <iomarker fontsize="28" x="208" y="880" name="Branch" orien="R180" />
        <branch name="ALU_Control(2:0)">
            <wire x2="2608" y1="976" y2="976" x1="224" />
            <wire x2="2608" y1="976" y2="1328" x1="2608" />
        </branch>
        <iomarker fontsize="28" x="224" y="976" name="ALU_Control(2:0)" orien="R180" />
        <branch name="XLXN_23(31:0)">
            <wire x2="2368" y1="1424" y2="1424" x1="1520" />
        </branch>
        <branch name="Data_out(31:0)">
            <wire x2="1648" y1="1696" y2="1696" x1="1520" />
            <wire x2="1744" y1="1696" y2="1696" x1="1648" />
            <wire x2="1648" y1="1696" y2="2000" x1="1648" />
            <wire x2="3312" y1="2000" y2="2000" x1="1648" />
        </branch>
        <branch name="XLXN_25(31:0)">
            <wire x2="2368" y1="1728" y2="1728" x1="1808" />
        </branch>
        <branch name="Imm_32(31:0)">
            <wire x2="1728" y1="2096" y2="2096" x1="1376" />
            <wire x2="1744" y1="1760" y2="1760" x1="1728" />
            <wire x2="1728" y1="1760" y2="2096" x1="1728" />
        </branch>
        <branch name="ALUSrc_B">
            <wire x2="1776" y1="1056" y2="1056" x1="224" />
            <wire x2="1776" y1="1056" y2="1664" x1="1776" />
        </branch>
        <iomarker fontsize="28" x="224" y="1056" name="ALUSrc_B" orien="R180" />
        <branch name="RegWrite">
            <wire x2="1280" y1="1104" y2="1104" x1="208" />
            <wire x2="1280" y1="1104" y2="1312" x1="1280" />
        </branch>
        <branch name="RegDst">
            <wire x2="864" y1="1328" y2="1328" x1="208" />
            <wire x2="864" y1="1328" y2="1568" x1="864" />
        </branch>
        <iomarker fontsize="28" x="208" y="1104" name="RegWrite" orien="R180" />
        <iomarker fontsize="28" x="208" y="1488" name="inst_field(25:0)" orien="R180" />
        <bustap x2="528" y1="1488" y2="1488" x1="448" />
        <bustap x2="496" y1="1536" y2="1536" x1="448" />
        <branch name="inst_field(20:16)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="592" y="1536" type="branch" />
            <wire x2="528" y1="1536" y2="1536" x1="496" />
            <wire x2="592" y1="1536" y2="1536" x1="528" />
            <wire x2="752" y1="1536" y2="1536" x1="592" />
            <wire x2="1040" y1="1536" y2="1536" x1="752" />
            <wire x2="752" y1="1536" y2="1600" x1="752" />
            <wire x2="848" y1="1600" y2="1600" x1="752" />
        </branch>
        <branch name="inst_field(25:21)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="576" y="1488" type="branch" />
            <wire x2="576" y1="1488" y2="1488" x1="528" />
            <wire x2="1040" y1="1488" y2="1488" x1="576" />
        </branch>
        <bustap x2="512" y1="1632" y2="1632" x1="448" />
        <branch name="inst_field(15:11)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="560" y="1632" type="branch" />
            <wire x2="560" y1="1632" y2="1632" x1="512" />
            <wire x2="848" y1="1632" y2="1632" x1="560" />
        </branch>
        <bustap x2="528" y1="2160" y2="2160" x1="448" />
        <branch name="inst_field(25:0)">
            <wire x2="368" y1="1488" y2="1488" x1="208" />
            <wire x2="448" y1="1488" y2="1488" x1="368" />
            <wire x2="368" y1="1488" y2="1536" x1="368" />
            <wire x2="448" y1="1536" y2="1536" x1="368" />
            <wire x2="368" y1="1536" y2="1632" x1="368" />
            <wire x2="448" y1="1632" y2="1632" x1="368" />
            <wire x2="368" y1="1632" y2="2160" x1="368" />
            <wire x2="448" y1="2160" y2="2160" x1="368" />
        </branch>
        <instance x="1104" y="2160" name="XLXI_5" orien="R0">
        </instance>
        <branch name="inst_field(15:0)">
            <wire x2="1200" y1="2160" y2="2160" x1="528" />
        </branch>
        <branch name="Wt_addr(4:0)">
            <wire x2="1040" y1="1616" y2="1616" x1="880" />
        </branch>
        <branch name="ALU_out(31:0)">
            <wire x2="832" y1="1728" y2="1728" x1="768" />
            <wire x2="768" y1="1728" y2="2320" x1="768" />
            <wire x2="3008" y1="2320" y2="2320" x1="768" />
            <wire x2="3008" y1="1568" y2="1568" x1="2816" />
            <wire x2="3312" y1="1568" y2="1568" x1="3008" />
            <wire x2="3008" y1="1568" y2="2320" x1="3008" />
        </branch>
        <branch name="Data_in(31:0)">
            <wire x2="832" y1="1792" y2="1792" x1="208" />
        </branch>
        <branch name="XLXN_44(31:0)">
            <wire x2="1040" y1="1760" y2="1760" x1="896" />
        </branch>
        <branch name="MemtoReg">
            <wire x2="864" y1="1680" y2="1680" x1="208" />
            <wire x2="864" y1="1680" y2="1696" x1="864" />
        </branch>
        <iomarker fontsize="28" x="208" y="1680" name="MemtoReg" orien="R180" />
        <iomarker fontsize="28" x="208" y="1792" name="Data_in(31:0)" orien="R180" />
        <iomarker fontsize="28" x="3312" y="1568" name="ALU_out(31:0)" orien="R0" />
        <iomarker fontsize="28" x="208" y="1328" name="RegDst" orien="R180" />
        <iomarker fontsize="28" x="3312" y="2000" name="Data_out(31:0)" orien="R0" />
        <branch name="V5">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="592" y="208" type="branch" />
            <wire x2="544" y1="128" y2="208" x1="544" />
            <wire x2="592" y1="208" y2="208" x1="544" />
            <wire x2="624" y1="208" y2="208" x1="592" />
            <wire x2="624" y1="208" y2="496" x1="624" />
            <wire x2="672" y1="496" y2="496" x1="624" />
            <wire x2="1008" y1="208" y2="208" x1="624" />
            <wire x2="1008" y1="208" y2="608" x1="1008" />
            <wire x2="1152" y1="608" y2="608" x1="1008" />
        </branch>
        <branch name="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,V5,N0,N0">
            <wire x2="1456" y1="608" y2="608" x1="1232" />
        </branch>
        <bustap x2="1152" y1="608" y2="608" x1="1232" />
        <instance x="480" y="128" name="XLXI_16" orien="R0" />
        <text style="fontsize:20;fontname:Arial;textcolor:rgb(255,0,0)" x="200" y="2464">Imm_32=inst_field(15),inst_field(15),inst_field(15),inst_field(15),inst_field(15),inst_field(15),inst_field(15),inst_field(15),inst_field(15),inst_field(15),inst_field(15),inst_field(15),inst_field(15),inst_field(15),inst_field(15),inst_field(15),inst_field(15:0)</text>
    </sheet>
</drawing>