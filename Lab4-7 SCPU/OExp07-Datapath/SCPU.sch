<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7(2:0)" />
        <signal name="mem_w" />
        <signal name="CPU_MIO" />
        <signal name="MIO_ready" />
        <signal name="inst_in(25:0)" />
        <signal name="inst_in(31:0)" />
        <signal name="inst_in(31:26)" />
        <signal name="inst_in(5:0)" />
        <signal name="Data_in(31:0)" />
        <signal name="reset" />
        <signal name="INT" />
        <signal name="Addr_out(31:0)" />
        <signal name="PC_out(31:0)" />
        <signal name="Data_out(31:0)" />
        <signal name="XLXN_17" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23(1:0)" />
        <signal name="XLXN_24(1:0)" />
        <signal name="clk" />
        <port polarity="Output" name="mem_w" />
        <port polarity="Output" name="CPU_MIO" />
        <port polarity="Input" name="MIO_ready" />
        <port polarity="Input" name="inst_in(31:0)" />
        <port polarity="Input" name="Data_in(31:0)" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="INT" />
        <port polarity="Output" name="Addr_out(31:0)" />
        <port polarity="Output" name="PC_out(31:0)" />
        <port polarity="Output" name="Data_out(31:0)" />
        <port polarity="Input" name="clk" />
        <blockdef name="Data_path">
            <timestamp>2019-4-30T10:49:46</timestamp>
            <rect width="352" x="64" y="-704" height="704" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <rect width="64" x="0" y="-620" height="24" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="416" y="-684" height="24" />
            <line x2="480" y1="-672" y2="-672" x1="416" />
            <line x2="480" y1="-464" y2="-464" x1="416" />
            <rect width="64" x="416" y="-268" height="24" />
            <line x2="480" y1="-256" y2="-256" x1="416" />
            <rect width="64" x="416" y="-60" height="24" />
            <line x2="480" y1="-48" y2="-48" x1="416" />
        </blockdef>
        <blockdef name="SCPU_ctrl">
            <timestamp>2019-4-30T7:37:34</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="464" y1="32" y2="32" x1="400" />
            <rect width="64" x="400" y="84" height="24" />
            <line x2="464" y1="96" y2="96" x1="400" />
            <rect width="64" x="400" y="148" height="24" />
            <line x2="464" y1="160" y2="160" x1="400" />
            <line x2="464" y1="-544" y2="-544" x1="400" />
            <line x2="464" y1="-480" y2="-480" x1="400" />
            <line x2="464" y1="-224" y2="-224" x1="400" />
            <rect width="64" x="400" y="-172" height="24" />
            <line x2="464" y1="-160" y2="-160" x1="400" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
            <line x2="464" y1="-96" y2="-96" x1="400" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-64" y2="-64" x1="64" />
            <rect width="64" x="0" y="-444" height="24" />
            <line x2="0" y1="-432" y2="-432" x1="64" />
            <rect style="linewidth:W;linecolor:rgb(255,0,0);fillcolor:rgb(255,170,255);fillstyle:Solid" width="336" x="64" y="-576" height="768" />
        </blockdef>
        <block symbolname="Data_path" name="XLXI_8">
            <blockpin signalname="XLXN_1" name="RegDst" />
            <blockpin signalname="Data_in(31:0)" name="Data_in(31:0)" />
            <blockpin signalname="XLXN_2" name="ALUSrc_B" />
            <blockpin signalname="XLXN_6" name="RegWrite" />
            <blockpin signalname="XLXN_23(1:0)" name="DatatoReg(1:0)" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="reset" name="rst" />
            <blockpin signalname="XLXN_7(2:0)" name="ALU_Control(2:0)" />
            <blockpin signalname="inst_in(25:0)" name="inst_field(25:0)" />
            <blockpin signalname="XLXN_24(1:0)" name="Branch(1:0)" />
            <blockpin signalname="XLXN_22" name="Jal" />
            <blockpin signalname="Data_out(31:0)" name="Data_out(31:0)" />
            <blockpin signalname="XLXN_17" name="zero" />
            <blockpin signalname="PC_out(31:0)" name="PC_out(31:0)" />
            <blockpin signalname="Addr_out(31:0)" name="ALU_out(31:0)" />
        </block>
        <block symbolname="SCPU_ctrl" name="XLXI_9">
            <blockpin signalname="MIO_ready" name="MIO_ready" />
            <blockpin signalname="inst_in(31:26)" name="OPcode(5:0)" />
            <blockpin signalname="inst_in(5:0)" name="Fun(5:0)" />
            <blockpin signalname="XLXN_1" name="RegDst" />
            <blockpin signalname="XLXN_2" name="ALUSrc_B" />
            <blockpin signalname="XLXN_6" name="RegWrite" />
            <blockpin signalname="mem_w" name="mem_w" />
            <blockpin signalname="CPU_MIO" name="CPU_MIO" />
            <blockpin signalname="XLXN_7(2:0)" name="ALU_Control(2:0)" />
            <blockpin signalname="XLXN_17" name="zero" />
            <blockpin signalname="XLXN_22" name="Jal" />
            <blockpin signalname="XLXN_23(1:0)" name="DatatoReg(1:0)" />
            <blockpin signalname="XLXN_24(1:0)" name="Branch(1:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_1">
            <wire x2="2080" y1="944" y2="944" x1="1552" />
            <wire x2="2080" y1="704" y2="944" x1="2080" />
            <wire x2="2224" y1="704" y2="704" x1="2080" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1648" y1="1008" y2="1008" x1="1552" />
            <wire x2="1648" y1="832" y2="1008" x1="1648" />
            <wire x2="2224" y1="832" y2="832" x1="1648" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="1696" y1="1264" y2="1264" x1="1552" />
            <wire x2="1696" y1="896" y2="1264" x1="1696" />
            <wire x2="2224" y1="896" y2="896" x1="1696" />
        </branch>
        <branch name="XLXN_7(2:0)">
            <wire x2="1760" y1="1328" y2="1328" x1="1552" />
            <wire x2="1760" y1="1152" y2="1328" x1="1760" />
            <wire x2="2224" y1="1152" y2="1152" x1="1760" />
        </branch>
        <branch name="mem_w">
            <wire x2="1920" y1="1392" y2="1392" x1="1552" />
            <wire x2="1920" y1="1392" y2="1616" x1="1920" />
            <wire x2="2736" y1="1616" y2="1616" x1="1920" />
        </branch>
        <branch name="CPU_MIO">
            <wire x2="1808" y1="1456" y2="1456" x1="1552" />
            <wire x2="1808" y1="1456" y2="1728" x1="1808" />
            <wire x2="2736" y1="1728" y2="1728" x1="1808" />
        </branch>
        <iomarker fontsize="28" x="2736" y="1616" name="mem_w" orien="R0" />
        <iomarker fontsize="28" x="2736" y="1728" name="CPU_MIO" orien="R0" />
        <branch name="MIO_ready">
            <wire x2="1088" y1="1424" y2="1424" x1="720" />
        </branch>
        <iomarker fontsize="28" x="720" y="1424" name="MIO_ready" orien="R180" />
        <branch name="inst_in(31:0)">
            <wire x2="592" y1="864" y2="864" x1="224" />
            <wire x2="720" y1="864" y2="864" x1="592" />
            <wire x2="592" y1="864" y2="1056" x1="592" />
            <wire x2="592" y1="1056" y2="1136" x1="592" />
            <wire x2="592" y1="1136" y2="1168" x1="592" />
        </branch>
        <iomarker fontsize="28" x="224" y="864" name="inst_in(31:0)" orien="R180" />
        <bustap x2="848" y1="864" y2="864" x1="720" />
        <bustap x2="688" y1="1056" y2="1056" x1="592" />
        <bustap x2="688" y1="1136" y2="1136" x1="592" />
        <branch name="inst_in(31:26)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="752" y="1056" type="branch" />
            <wire x2="752" y1="1056" y2="1056" x1="688" />
            <wire x2="1088" y1="1056" y2="1056" x1="752" />
        </branch>
        <branch name="inst_in(5:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="704" y="1136" type="branch" />
            <wire x2="704" y1="1136" y2="1136" x1="688" />
            <wire x2="1088" y1="1136" y2="1136" x1="704" />
        </branch>
        <branch name="reset">
            <wire x2="1552" y1="688" y2="688" x1="144" />
            <wire x2="1552" y1="688" y2="1088" x1="1552" />
            <wire x2="2224" y1="1088" y2="1088" x1="1552" />
        </branch>
        <branch name="INT">
            <wire x2="1136" y1="1872" y2="1872" x1="736" />
        </branch>
        <iomarker fontsize="28" x="736" y="1872" name="INT" orien="R180" />
        <branch name="inst_in(25:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="896" y="864" type="branch" />
            <wire x2="896" y1="864" y2="864" x1="848" />
            <wire x2="2096" y1="864" y2="864" x1="896" />
            <wire x2="2096" y1="864" y2="1216" x1="2096" />
            <wire x2="2224" y1="1216" y2="1216" x1="2096" />
        </branch>
        <branch name="Addr_out(31:0)">
            <wire x2="3040" y1="1328" y2="1328" x1="2704" />
        </branch>
        <iomarker fontsize="28" x="3040" y="1328" name="Addr_out(31:0)" orien="R0" />
        <branch name="PC_out(31:0)">
            <wire x2="3024" y1="1120" y2="1120" x1="2704" />
        </branch>
        <iomarker fontsize="28" x="3024" y="1120" name="PC_out(31:0)" orien="R0" />
        <branch name="Data_out(31:0)">
            <wire x2="3088" y1="704" y2="704" x1="2704" />
        </branch>
        <iomarker fontsize="28" x="3088" y="704" name="Data_out(31:0)" orien="R0" />
        <branch name="XLXN_17">
            <wire x2="1088" y1="1520" y2="1520" x1="1008" />
            <wire x2="1008" y1="1520" y2="1808" x1="1008" />
            <wire x2="2976" y1="1808" y2="1808" x1="1008" />
            <wire x2="2976" y1="912" y2="912" x1="2704" />
            <wire x2="2976" y1="912" y2="1808" x1="2976" />
        </branch>
        <iomarker fontsize="28" x="224" y="768" name="Data_in(31:0)" orien="R180" />
        <iomarker fontsize="28" x="144" y="688" name="reset" orien="R180" />
        <branch name="XLXN_22">
            <wire x2="1936" y1="1520" y2="1520" x1="1552" />
            <wire x2="1936" y1="1344" y2="1520" x1="1936" />
            <wire x2="2224" y1="1344" y2="1344" x1="1936" />
        </branch>
        <branch name="XLXN_23(1:0)">
            <wire x2="2016" y1="1584" y2="1584" x1="1552" />
            <wire x2="2224" y1="960" y2="960" x1="2016" />
            <wire x2="2016" y1="960" y2="1584" x1="2016" />
        </branch>
        <branch name="XLXN_24(1:0)">
            <wire x2="2144" y1="1648" y2="1648" x1="1552" />
            <wire x2="2224" y1="1280" y2="1280" x1="2144" />
            <wire x2="2144" y1="1280" y2="1648" x1="2144" />
        </branch>
        <branch name="Data_in(31:0)">
            <wire x2="2208" y1="768" y2="768" x1="224" />
            <wire x2="2224" y1="768" y2="768" x1="2208" />
        </branch>
        <branch name="clk">
            <wire x2="1616" y1="624" y2="624" x1="192" />
            <wire x2="1616" y1="624" y2="1024" x1="1616" />
            <wire x2="2224" y1="1024" y2="1024" x1="1616" />
        </branch>
        <iomarker fontsize="28" x="192" y="624" name="clk" orien="R180" />
        <instance x="2224" y="1376" name="XLXI_8" orien="R0">
        </instance>
        <instance x="1088" y="1488" name="XLXI_9" orien="R0">
        </instance>
    </sheet>
</drawing>