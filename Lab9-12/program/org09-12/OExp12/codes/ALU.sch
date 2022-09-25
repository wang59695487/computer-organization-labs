<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="A(31:0)" />
        <signal name="ALU_Ctr(2)" />
        <signal name="B(31:0)" />
        <signal name="S(31:0)" />
        <signal name="XLXN_20(31:0)" />
        <signal name="XLXN_21(31:0)" />
        <signal name="XLXN_22(31:0)" />
        <signal name="XLXN_23(31:0)" />
        <signal name="XLXN_24(31:0)" />
        <signal name="res(31:0)" />
        <signal name="zero" />
        <signal name="overflow" />
        <signal name="ALU_Ctr(2:0)" />
        <signal name="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,S(31)" />
        <signal name="N0" />
        <signal name="Co" />
        <port polarity="Input" name="A(31:0)" />
        <port polarity="Input" name="B(31:0)" />
        <port polarity="Output" name="res(31:0)" />
        <port polarity="Output" name="zero" />
        <port polarity="Output" name="overflow" />
        <port polarity="Input" name="ALU_Ctr(2:0)" />
        <port polarity="Output" name="Co" />
        <blockdef name="xor32">
            <timestamp>2018-1-17T6:57:16</timestamp>
            <arc ex="80" ey="-112" sx="80" sy="-16" r="56" cx="48" cy="-64" />
            <line x2="80" y1="-112" y2="-112" x1="144" />
            <line x2="80" y1="-16" y2="-16" x1="144" />
            <arc ex="144" ey="-112" sx="224" sy="-64" r="88" cx="148" cy="-24" />
            <arc ex="60" ey="-112" sx="64" sy="-16" r="56" cx="32" cy="-64" />
            <arc ex="224" ey="-64" sx="144" sy="-16" r="88" cx="148" cy="-104" />
            <line x2="80" y1="-96" y2="-96" style="linewidth:W" x1="32" />
            <line x2="80" y1="-32" y2="-32" style="linewidth:W" x1="32" />
            <line x2="228" y1="-64" y2="-64" style="linewidth:W" x1="256" />
        </blockdef>
        <blockdef name="nor32">
            <timestamp>2018-1-17T6:57:19</timestamp>
            <line x2="64" y1="-112" y2="-112" x1="128" />
            <arc ex="64" ey="-112" sx="64" sy="-16" r="56" cx="32" cy="-64" />
            <line x2="64" y1="-16" y2="-16" x1="128" />
            <arc ex="208" ey="-64" sx="128" sy="-16" r="88" cx="132" cy="-104" />
            <arc ex="128" ey="-112" sx="208" sy="-64" r="88" cx="132" cy="-24" />
            <line x2="224" y1="-64" y2="-64" style="linewidth:W" x1="256" />
            <circle style="linewidth:W" r="8" cx="216" cy="-64" />
            <line x2="48" y1="-96" y2="-96" style="linewidth:W" x1="80" />
            <line x2="48" y1="-32" y2="-32" style="linewidth:W" x1="80" />
        </blockdef>
        <blockdef name="srl32">
            <timestamp>2018-1-17T6:57:17</timestamp>
            <rect width="184" x="64" y="-128" height="128" />
            <line x2="32" y1="-96" y2="-96" style="linewidth:W" x1="64" />
            <line x2="32" y1="-32" y2="-32" style="linewidth:W" x1="64" />
            <line x2="288" y1="-64" y2="-64" style="linewidth:W" x1="248" />
        </blockdef>
        <blockdef name="and32">
            <timestamp>2018-1-17T6:57:22</timestamp>
            <line x2="32" y1="-96" y2="-96" style="linewidth:W" x1="64" />
            <line x2="28" y1="-32" y2="-32" style="linewidth:W" x1="64" />
            <line x2="64" y1="-16" y2="-16" x1="144" />
            <line x2="64" y1="-16" y2="-112" x1="64" />
            <line x2="144" y1="-112" y2="-112" x1="64" />
            <arc ex="144" ey="-112" sx="144" sy="-16" r="48" cx="144" cy="-64" />
            <line x2="224" y1="-64" y2="-64" style="linewidth:W" x1="192" />
        </blockdef>
        <blockdef name="or_bit_32">
            <timestamp>2018-1-17T6:57:19</timestamp>
            <rect width="220" x="64" y="-104" height="112" />
            <line x2="32" y1="-48" y2="-48" style="linewidth:W" x1="64" />
            <arc ex="260" ey="-48" sx="180" sy="0" r="88" cx="184" cy="-88" />
            <line x2="116" y1="0" y2="0" x1="180" />
            <line x2="116" y1="-96" y2="-96" x1="180" />
            <arc ex="116" ey="-96" sx="116" sy="0" r="56" cx="84" cy="-48" />
            <arc ex="180" ey="-96" sx="260" sy="-48" r="88" cx="184" cy="-8" />
            <line x2="120" y1="-96" y2="-96" x1="184" />
            <line x2="88" y1="-80" y2="-80" x1="128" />
            <line x2="92" y1="-16" y2="-16" x1="132" />
            <line x2="304" y1="-48" y2="-48" x1="284" />
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
        <blockdef name="MUX8T1_32">
            <timestamp>2017-3-26T16:0:0</timestamp>
            <rect width="68" x="12" y="-264" height="264" />
            <line x2="48" y1="-264" y2="-272" style="linewidth:W" x1="48" />
            <line x2="0" y1="-16" y2="-16" style="linewidth:W" x1="12" />
            <line x2="0" y1="-48" y2="-48" style="linewidth:W" x1="12" />
            <line x2="0" y1="-80" y2="-80" style="linewidth:W" x1="12" />
            <line x2="0" y1="-112" y2="-112" style="linewidth:W" x1="12" />
            <line x2="0" y1="-144" y2="-144" style="linewidth:W" x1="12" />
            <line x2="0" y1="-176" y2="-176" style="linewidth:W" x1="12" />
            <line x2="0" y1="-208" y2="-208" style="linewidth:W" x1="12" />
            <line x2="0" y1="-240" y2="-240" style="linewidth:W" x1="12" />
            <line x2="96" y1="-160" y2="-160" style="linewidth:W" x1="80" />
        </blockdef>
        <blockdef name="or32">
            <timestamp>2018-3-28T11:19:42</timestamp>
            <line x2="64" y1="-16" y2="-16" x1="128" />
            <arc ex="208" ey="-64" sx="128" sy="-16" r="88" cx="132" cy="-104" />
            <arc ex="128" ey="-112" sx="208" sy="-64" r="88" cx="132" cy="-24" />
            <line x2="240" y1="-64" y2="-64" style="linewidth:W" x1="208" />
            <line x2="64" y1="-112" y2="-112" x1="128" />
            <line x2="48" y1="-96" y2="-96" style="linewidth:W" x1="80" />
            <arc ex="64" ey="-112" sx="64" sy="-16" r="56" cx="32" cy="-64" />
            <line x2="48" y1="-32" y2="-32" style="linewidth:W" x1="80" />
        </blockdef>
        <blockdef name="ABC32">
            <timestamp>2017-4-3T16:0:0</timestamp>
            <line x2="0" y1="-176" y2="-176" style="linewidth:W" x1="16" />
            <line x2="0" y1="-48" y2="-48" style="linewidth:W" x1="16" />
            <line x2="16" y1="-144" y2="-220" x1="16" />
            <line x2="64" y1="-144" y2="-112" x1="16" />
            <line x2="64" y1="-80" y2="-112" x1="16" />
            <line x2="16" y1="-80" y2="4" x1="16" />
            <line x2="176" y1="4" y2="-60" x1="16" />
            <line x2="176" y1="-220" y2="-156" x1="16" />
            <line x2="176" y1="-60" y2="-156" x1="176" />
            <line x2="192" y1="-112" y2="-112" style="linewidth:W" x1="176" />
            <line x2="80" y1="-224" y2="-196" x1="80" />
            <line x2="108" y1="-32" y2="0" x1="108" />
            <line x2="192" y1="0" y2="0" x1="108" />
        </blockdef>
        <block symbolname="xor32" name="XLXI_2">
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_20(31:0)" name="res(31:0)" />
        </block>
        <block symbolname="nor32" name="XLXI_5">
            <blockpin signalname="XLXN_21(31:0)" name="res(31:0)" />
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
        </block>
        <block symbolname="srl32" name="XLXI_6">
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_22(31:0)" name="res(31:0)" />
        </block>
        <block symbolname="and32" name="XLXI_8">
            <blockpin signalname="XLXN_24(31:0)" name="res(31:0)" />
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
        </block>
        <block symbolname="or_bit_32" name="XLXI_13">
            <blockpin signalname="zero" name="o" />
            <blockpin signalname="res(31:0)" name="A(31:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_14">
            <blockpin signalname="N0" name="G" />
        </block>
        <block symbolname="MUX8T1_32" name="XLXI_15">
            <blockpin signalname="ALU_Ctr(2:0)" name="s(2:0)" />
            <blockpin signalname="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,S(31)" name="I7(31:0)" />
            <blockpin signalname="S(31:0)" name="I6(31:0)" />
            <blockpin signalname="XLXN_22(31:0)" name="I5(31:0)" />
            <blockpin signalname="XLXN_21(31:0)" name="I4(31:0)" />
            <blockpin signalname="XLXN_20(31:0)" name="I3(31:0)" />
            <blockpin signalname="S(31:0)" name="I2(31:0)" />
            <blockpin signalname="XLXN_23(31:0)" name="I1(31:0)" />
            <blockpin signalname="XLXN_24(31:0)" name="I0(31:0)" />
            <blockpin signalname="res(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="or32" name="XLXI_16">
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_23(31:0)" name="res(31:0)" />
        </block>
        <block symbolname="ABC32" name="XLXI_18">
            <blockpin signalname="B(31:0)" name="B(31:0)" />
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="ALU_Ctr(2)" name="sub" />
            <blockpin signalname="S(31:0)" name="S(31:0)" />
            <blockpin signalname="Co" name="Co" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="912" y="1552" name="XLXI_2" orien="R0">
        </instance>
        <instance x="928" y="1696" name="XLXI_5" orien="R0">
        </instance>
        <instance x="880" y="1888" name="XLXI_6" orien="R0">
        </instance>
        <instance x="912" y="864" name="XLXI_8" orien="R0">
        </instance>
        <branch name="A(31:0)">
            <wire x2="848" y1="800" y2="800" x1="208" />
            <wire x2="848" y1="800" y2="928" x1="848" />
            <wire x2="960" y1="928" y2="928" x1="848" />
            <wire x2="848" y1="928" y2="1184" x1="848" />
            <wire x2="960" y1="1184" y2="1184" x1="848" />
            <wire x2="848" y1="1184" y2="1456" x1="848" />
            <wire x2="944" y1="1456" y2="1456" x1="848" />
            <wire x2="848" y1="1456" y2="1600" x1="848" />
            <wire x2="848" y1="1600" y2="1792" x1="848" />
            <wire x2="912" y1="1792" y2="1792" x1="848" />
            <wire x2="976" y1="1600" y2="1600" x1="848" />
            <wire x2="944" y1="768" y2="768" x1="848" />
            <wire x2="848" y1="768" y2="800" x1="848" />
        </branch>
        <branch name="ALU_Ctr(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="952" type="branch" />
            <wire x2="576" y1="816" y2="1088" x1="576" />
            <wire x2="1040" y1="1088" y2="1088" x1="576" />
            <wire x2="1040" y1="1088" y2="1136" x1="1040" />
        </branch>
        <iomarker fontsize="28" x="208" y="800" name="A(31:0)" orien="R180" />
        <branch name="B(31:0)">
            <wire x2="800" y1="1856" y2="1856" x1="208" />
            <wire x2="912" y1="1856" y2="1856" x1="800" />
            <wire x2="944" y1="832" y2="832" x1="800" />
            <wire x2="800" y1="832" y2="992" x1="800" />
            <wire x2="960" y1="992" y2="992" x1="800" />
            <wire x2="800" y1="992" y2="1312" x1="800" />
            <wire x2="800" y1="1312" y2="1520" x1="800" />
            <wire x2="944" y1="1520" y2="1520" x1="800" />
            <wire x2="800" y1="1520" y2="1664" x1="800" />
            <wire x2="976" y1="1664" y2="1664" x1="800" />
            <wire x2="800" y1="1664" y2="1856" x1="800" />
            <wire x2="960" y1="1312" y2="1312" x1="800" />
        </branch>
        <iomarker fontsize="28" x="208" y="1856" name="B(31:0)" orien="R180" />
        <branch name="XLXN_20(31:0)">
            <wire x2="1360" y1="1488" y2="1488" x1="1168" />
            <wire x2="1680" y1="1152" y2="1152" x1="1360" />
            <wire x2="1360" y1="1152" y2="1488" x1="1360" />
        </branch>
        <branch name="XLXN_21(31:0)">
            <wire x2="1392" y1="1632" y2="1632" x1="1184" />
            <wire x2="1680" y1="1184" y2="1184" x1="1392" />
            <wire x2="1392" y1="1184" y2="1632" x1="1392" />
        </branch>
        <branch name="XLXN_23(31:0)">
            <wire x2="1408" y1="960" y2="960" x1="1152" />
            <wire x2="1408" y1="960" y2="1088" x1="1408" />
            <wire x2="1680" y1="1088" y2="1088" x1="1408" />
        </branch>
        <instance x="1888" y="1536" name="XLXI_13" orien="R0">
        </instance>
        <branch name="res(31:0)">
            <wire x2="1856" y1="1136" y2="1136" x1="1776" />
            <wire x2="1856" y1="1136" y2="1488" x1="1856" />
            <wire x2="1920" y1="1488" y2="1488" x1="1856" />
            <wire x2="2192" y1="1136" y2="1136" x1="1856" />
        </branch>
        <iomarker fontsize="28" x="2192" y="1136" name="res(31:0)" orien="R0" />
        <branch name="zero">
            <wire x2="2224" y1="1488" y2="1488" x1="2192" />
        </branch>
        <iomarker fontsize="28" x="2224" y="1488" name="zero" orien="R0" />
        <branch name="overflow">
            <wire x2="2272" y1="1856" y2="1856" x1="1920" />
        </branch>
        <iomarker fontsize="28" x="2272" y="1856" name="overflow" orien="R0" />
        <branch name="ALU_Ctr(2:0)">
            <wire x2="560" y1="672" y2="672" x1="240" />
            <wire x2="576" y1="672" y2="672" x1="560" />
            <wire x2="592" y1="672" y2="672" x1="576" />
            <wire x2="1728" y1="672" y2="672" x1="592" />
            <wire x2="1728" y1="672" y2="1024" x1="1728" />
            <wire x2="592" y1="672" y2="720" x1="592" />
            <wire x2="576" y1="720" y2="720" x1="544" />
            <wire x2="592" y1="720" y2="720" x1="576" />
        </branch>
        <iomarker fontsize="28" x="240" y="672" name="ALU_Ctr(2:0)" orien="R180" />
        <instance x="1632" y="2096" name="XLXI_14" orien="R0" />
        <bustap x2="576" y1="720" y2="816" x1="576" />
        <instance x="1680" y="1296" name="XLXI_15" orien="R0">
        </instance>
        <branch name="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,S(31)">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="2000" type="branch" />
            <wire x2="1680" y1="1280" y2="1280" x1="1520" />
            <wire x2="1520" y1="1280" y2="2000" x1="1520" />
        </branch>
        <branch name="N0">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="1696" y="1904" type="branch" />
            <wire x2="1696" y1="1904" y2="1968" x1="1696" />
        </branch>
        <branch name="XLXN_22(31:0)">
            <wire x2="1424" y1="1824" y2="1824" x1="1168" />
            <wire x2="1680" y1="1216" y2="1216" x1="1424" />
            <wire x2="1424" y1="1216" y2="1552" x1="1424" />
            <wire x2="1424" y1="1552" y2="1824" x1="1424" />
        </branch>
        <branch name="XLXN_24(31:0)">
            <wire x2="1216" y1="800" y2="800" x1="1136" />
            <wire x2="1424" y1="800" y2="800" x1="1216" />
            <wire x2="1424" y1="800" y2="1056" x1="1424" />
            <wire x2="1680" y1="1056" y2="1056" x1="1424" />
        </branch>
        <instance x="912" y="1024" name="XLXI_16" orien="R0">
        </instance>
        <instance x="960" y="1360" name="XLXI_18" orien="R0">
        </instance>
        <branch name="S(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1496" y="1248" type="branch" />
            <wire x2="1216" y1="1248" y2="1248" x1="1152" />
            <wire x2="1312" y1="1248" y2="1248" x1="1216" />
            <wire x2="1328" y1="1248" y2="1248" x1="1312" />
            <wire x2="1504" y1="1248" y2="1248" x1="1328" />
            <wire x2="1680" y1="1248" y2="1248" x1="1504" />
            <wire x2="1328" y1="1120" y2="1248" x1="1328" />
            <wire x2="1680" y1="1120" y2="1120" x1="1328" />
        </branch>
        <branch name="Co">
            <wire x2="2048" y1="1360" y2="1360" x1="1152" />
            <wire x2="2128" y1="1360" y2="1360" x1="2048" />
            <wire x2="2176" y1="1360" y2="1360" x1="2128" />
        </branch>
        <iomarker fontsize="28" x="2176" y="1360" name="Co" orien="R0" />
    </sheet>
</drawing>