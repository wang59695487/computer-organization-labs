<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="So(31:0)" />
        <signal name="XLXN_2(31:0)" />
        <signal name="B(31:0)" />
        <signal name="A(31:0)" />
        <signal name="ALU_operation(2:0)" />
        <signal name="ALU_operation(2)" />
        <signal name="S(32:0)" />
        <signal name="XLXN_17(31:0)" />
        <signal name="XLXN_18(31:0)" />
        <signal name="S(31:0)" />
        <signal name="XLXN_20(31:0)" />
        <signal name="XLXN_21(31:0)" />
        <signal name="XLXN_22(31:0)" />
        <signal name="res(31:0)" />
        <signal name="zero" />
        <signal name="overflow" />
        <signal name="S(32)" />
        <signal name="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,S(32)" />
        <port polarity="Input" name="B(31:0)" />
        <port polarity="Input" name="A(31:0)" />
        <port polarity="Input" name="ALU_operation(2:0)" />
        <port polarity="Output" name="res(31:0)" />
        <port polarity="Output" name="zero" />
        <port polarity="Output" name="overflow" />
        <blockdef name="and32">
            <timestamp>2014-3-19T13:28:4</timestamp>
            <line x2="32" y1="-96" y2="-96" style="linewidth:W" x1="64" />
            <line x2="28" y1="-32" y2="-32" style="linewidth:W" x1="64" />
            <line x2="64" y1="-16" y2="-16" x1="144" />
            <line x2="64" y1="-16" y2="-112" x1="64" />
            <line x2="144" y1="-112" y2="-112" x1="64" />
            <arc ex="144" ey="-112" sx="144" sy="-16" r="48" cx="144" cy="-64" />
            <line x2="224" y1="-64" y2="-64" style="linewidth:W" x1="192" />
        </blockdef>
        <blockdef name="or32">
            <timestamp>2014-3-19T13:34:26</timestamp>
            <line x2="64" y1="-16" y2="-16" x1="128" />
            <arc ex="208" ey="-64" sx="128" sy="-16" r="88" cx="132" cy="-104" />
            <arc ex="128" ey="-112" sx="208" sy="-64" r="88" cx="132" cy="-24" />
            <line x2="236" y1="-64" y2="-64" style="linewidth:W" x1="208" />
            <line x2="64" y1="-112" y2="-112" x1="128" />
            <line x2="48" y1="-96" y2="-96" style="linewidth:W" x1="80" />
            <arc ex="64" ey="-112" sx="64" sy="-16" r="56" cx="32" cy="-64" />
            <line x2="48" y1="-32" y2="-32" style="linewidth:W" x1="80" />
        </blockdef>
        <blockdef name="ADC32">
            <timestamp>2014-6-26T17:20:38</timestamp>
            <line x2="48" y1="-256" y2="-256" style="linewidth:W" x1="64" />
            <line x2="48" y1="-128" y2="-128" style="linewidth:W" x1="64" />
            <line x2="64" y1="-224" y2="-300" x1="64" />
            <line x2="112" y1="-224" y2="-192" x1="64" />
            <line x2="112" y1="-160" y2="-192" x1="64" />
            <line x2="64" y1="-160" y2="-76" x1="64" />
            <line x2="224" y1="-76" y2="-140" x1="64" />
            <line x2="224" y1="-300" y2="-236" x1="64" />
            <line x2="224" y1="-140" y2="-236" x1="224" />
            <line x2="240" y1="-192" y2="-192" style="linewidth:W" x1="224" />
            <line x2="128" y1="-304" y2="-276" x1="128" />
        </blockdef>
        <blockdef name="xor32">
            <timestamp>2014-3-19T14:4:0</timestamp>
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
            <timestamp>2014-3-19T13:43:44</timestamp>
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
            <timestamp>2014-3-19T13:48:12</timestamp>
            <rect width="184" x="64" y="-128" height="128" />
            <line x2="32" y1="-96" y2="-96" style="linewidth:W" x1="64" />
            <line x2="32" y1="-32" y2="-32" style="linewidth:W" x1="64" />
            <line x2="288" y1="-64" y2="-64" style="linewidth:W" x1="248" />
        </blockdef>
        <blockdef name="MUX8T1_32">
            <timestamp>2015-12-29T14:54:8</timestamp>
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
        <blockdef name="or_bit_32">
            <timestamp>2014-3-19T14:52:26</timestamp>
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
        <blockdef name="SignalExt_32">
            <timestamp>2015-6-25T6:52:52</timestamp>
            <line x2="76" y1="-32" y2="-32" x1="64" />
            <line x2="208" y1="-32" y2="-32" style="linewidth:W" x1="196" />
            <rect width="120" x="76" y="-52" height="40" />
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
        <block symbolname="xor32" name="XLXI_7">
            <blockpin signalname="So(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_2(31:0)" name="res(31:0)" />
        </block>
        <block symbolname="and32" name="XLXI_1">
            <blockpin signalname="XLXN_17(31:0)" name="res(31:0)" />
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
        </block>
        <block symbolname="or32" name="XLXI_2">
            <blockpin name="res(31:0)" />
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
        </block>
        <block symbolname="ADC32" name="XLXI_3">
            <blockpin signalname="XLXN_2(31:0)" name="B(31:0)" />
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="ALU_operation(2)" name="C0" />
            <blockpin signalname="S(32:0)" name="S(32:0)" />
        </block>
        <block symbolname="xor32" name="XLXI_4">
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
        <block symbolname="MUX8T1_32" name="XLXI_14">
            <blockpin signalname="ALU_operation(2:0)" name="s(2:0)" />
            <blockpin signalname="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,S(32)" name="I7(31:0)" />
            <blockpin signalname="S(31:0)" name="I6(31:0)" />
            <blockpin signalname="XLXN_22(31:0)" name="I5(31:0)" />
            <blockpin signalname="XLXN_21(31:0)" name="I4(31:0)" />
            <blockpin signalname="XLXN_20(31:0)" name="I3(31:0)" />
            <blockpin signalname="S(31:0)" name="I2(31:0)" />
            <blockpin signalname="XLXN_18(31:0)" name="I1(31:0)" />
            <blockpin signalname="XLXN_17(31:0)" name="I0(31:0)" />
            <blockpin signalname="res(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="or_bit_32" name="XLXI_15">
            <blockpin signalname="zero" name="o" />
            <blockpin signalname="res(31:0)" name="A(31:0)" />
        </block>
        <block symbolname="SignalExt_32" name="XLXI_16">
            <blockpin signalname="So(31:0)" name="So(31:0)" />
            <blockpin signalname="ALU_operation(2)" name="S" />
        </block>
        <block symbolname="gnd" name="XLXI_17">
            <blockpin signalname="S(32)" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="2720" height="1760">
        <instance x="960" y="464" name="XLXI_2" orien="R0">
        </instance>
        <instance x="960" y="880" name="XLXI_3" orien="R0">
        </instance>
        <instance x="960" y="1200" name="XLXI_5" orien="R0">
        </instance>
        <instance x="928" y="1472" name="XLXI_6" orien="R0">
        </instance>
        <instance x="448" y="816" name="XLXI_7" orien="R0">
        </instance>
        <instance x="1760" y="736" name="XLXI_14" orien="R0">
        </instance>
        <instance x="960" y="1040" name="XLXI_4" orien="R0">
        </instance>
        <branch name="So(31:0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="432" y="672" type="branch" />
            <wire x2="608" y1="640" y2="640" x1="432" />
            <wire x2="432" y1="640" y2="672" x1="432" />
            <wire x2="432" y1="672" y2="720" x1="432" />
            <wire x2="480" y1="720" y2="720" x1="432" />
            <wire x2="608" y1="560" y2="560" x1="592" />
            <wire x2="608" y1="560" y2="640" x1="608" />
        </branch>
        <branch name="XLXN_2(31:0)">
            <wire x2="1008" y1="752" y2="752" x1="704" />
        </branch>
        <branch name="A(31:0)">
            <wire x2="944" y1="256" y2="256" x1="272" />
            <wire x2="944" y1="256" y2="368" x1="944" />
            <wire x2="1008" y1="368" y2="368" x1="944" />
            <wire x2="944" y1="368" y2="624" x1="944" />
            <wire x2="1008" y1="624" y2="624" x1="944" />
            <wire x2="944" y1="624" y2="944" x1="944" />
            <wire x2="992" y1="944" y2="944" x1="944" />
            <wire x2="944" y1="944" y2="1104" x1="944" />
            <wire x2="944" y1="1104" y2="1376" x1="944" />
            <wire x2="960" y1="1376" y2="1376" x1="944" />
            <wire x2="1008" y1="1104" y2="1104" x1="944" />
            <wire x2="1008" y1="224" y2="224" x1="944" />
            <wire x2="944" y1="224" y2="256" x1="944" />
        </branch>
        <instance x="976" y="320" name="XLXI_1" orien="R0">
        </instance>
        <branch name="B(31:0)">
            <wire x2="800" y1="1440" y2="1440" x1="320" />
            <wire x2="960" y1="1440" y2="1440" x1="800" />
            <wire x2="480" y1="784" y2="784" x1="432" />
            <wire x2="432" y1="784" y2="1168" x1="432" />
            <wire x2="800" y1="1168" y2="1168" x1="432" />
            <wire x2="1008" y1="1168" y2="1168" x1="800" />
            <wire x2="800" y1="1168" y2="1440" x1="800" />
            <wire x2="1008" y1="288" y2="288" x1="800" />
            <wire x2="800" y1="288" y2="432" x1="800" />
            <wire x2="1008" y1="432" y2="432" x1="800" />
            <wire x2="800" y1="432" y2="1008" x1="800" />
            <wire x2="992" y1="1008" y2="1008" x1="800" />
            <wire x2="800" y1="1008" y2="1168" x1="800" />
        </branch>
        <branch name="ALU_operation(2:0)">
            <wire x2="368" y1="80" y2="80" x1="304" />
            <wire x2="1808" y1="80" y2="80" x1="368" />
            <wire x2="1808" y1="80" y2="464" x1="1808" />
            <wire x2="368" y1="80" y2="320" x1="368" />
        </branch>
        <iomarker fontsize="28" x="272" y="256" name="A(31:0)" orien="R180" />
        <bustap x2="368" y1="320" y2="400" x1="368" />
        <branch name="ALU_operation(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="368" y="507" type="branch" />
            <wire x2="368" y1="400" y2="496" x1="368" />
            <wire x2="1088" y1="496" y2="496" x1="368" />
            <wire x2="1088" y1="496" y2="576" x1="1088" />
            <wire x2="368" y1="496" y2="560" x1="368" />
            <wire x2="448" y1="560" y2="560" x1="368" />
        </branch>
        <branch name="S(32:0)">
            <wire x2="1264" y1="688" y2="688" x1="1200" />
        </branch>
        <bustap x2="1328" y1="688" y2="688" x1="1264" />
        <branch name="XLXN_17(31:0)">
            <wire x2="1472" y1="256" y2="256" x1="1200" />
            <wire x2="1472" y1="256" y2="496" x1="1472" />
            <wire x2="1760" y1="496" y2="496" x1="1472" />
        </branch>
        <branch name="XLXN_18(31:0)">
            <wire x2="1456" y1="400" y2="400" x1="1200" />
            <wire x2="1456" y1="400" y2="528" x1="1456" />
            <wire x2="1760" y1="528" y2="528" x1="1456" />
        </branch>
        <branch name="S(31:0)">
            <wire x2="1392" y1="688" y2="688" x1="1328" />
            <wire x2="1760" y1="688" y2="688" x1="1392" />
            <wire x2="1392" y1="560" y2="688" x1="1392" />
            <wire x2="1760" y1="560" y2="560" x1="1392" />
        </branch>
        <branch name="XLXN_20(31:0)">
            <wire x2="1456" y1="976" y2="976" x1="1216" />
            <wire x2="1456" y1="592" y2="976" x1="1456" />
            <wire x2="1760" y1="592" y2="592" x1="1456" />
        </branch>
        <branch name="XLXN_21(31:0)">
            <wire x2="1520" y1="1136" y2="1136" x1="1216" />
            <wire x2="1760" y1="624" y2="624" x1="1520" />
            <wire x2="1520" y1="624" y2="1136" x1="1520" />
        </branch>
        <branch name="XLXN_22(31:0)">
            <wire x2="1568" y1="1408" y2="1408" x1="1216" />
            <wire x2="1760" y1="656" y2="656" x1="1568" />
            <wire x2="1568" y1="656" y2="1408" x1="1568" />
        </branch>
        <branch name="zero">
            <wire x2="2512" y1="1136" y2="1136" x1="2368" />
        </branch>
        <iomarker fontsize="28" x="2400" y="576" name="res(31:0)" orien="R0" />
        <branch name="res(31:0)">
            <wire x2="2256" y1="576" y2="576" x1="1856" />
            <wire x2="2400" y1="576" y2="576" x1="2256" />
            <wire x2="2256" y1="576" y2="928" x1="2256" />
            <wire x2="2032" y1="928" y2="1136" x1="2032" />
            <wire x2="2096" y1="1136" y2="1136" x1="2032" />
            <wire x2="2256" y1="928" y2="928" x1="2032" />
        </branch>
        <instance x="2064" y="1184" name="XLXI_15" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2512" y="1136" name="zero" orien="R0" />
        <branch name="overflow">
            <wire x2="2368" y1="1520" y2="1520" x1="2080" />
        </branch>
        <iomarker fontsize="28" x="2368" y="1520" name="overflow" orien="R0" />
        <iomarker fontsize="28" x="304" y="80" name="ALU_operation(2:0)" orien="R180" />
        <iomarker fontsize="28" x="320" y="1440" name="B(31:0)" orien="R180" />
        <instance x="1840" y="1200" name="XLXI_17" orien="R0" />
        <bustap x2="1824" y1="976" y2="976" x1="1728" />
        <branch name="S(32)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="976" type="branch" />
            <wire x2="1840" y1="976" y2="976" x1="1824" />
            <wire x2="1904" y1="976" y2="976" x1="1840" />
            <wire x2="1904" y1="976" y2="1072" x1="1904" />
        </branch>
        <branch name="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,S(32)">
            <wire x2="1760" y1="720" y2="720" x1="1648" />
            <wire x2="1648" y1="720" y2="976" x1="1648" />
            <wire x2="1728" y1="976" y2="976" x1="1648" />
        </branch>
        <instance x="384" y="592" name="XLXI_16" orien="R0">
        </instance>
    </sheet>
</drawing>