////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: HW3_2_synthesis.v
// /___/   /\     Timestamp: Sun Jun 21 13:01:21 2015
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim HW3_2.ngc HW3_2_synthesis.v 
// Device	: xa7a100t-2I-csg324
// Input file	: HW3_2.ngc
// Output file	: /home/joshua/Documents/HW3/netgen/synthesis/HW3_2_synthesis.v
// # of Modules	: 1
// Design Name	: HW3_2
// Xilinx        : /opt/Xilinx/14.7/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module HW3_2 (
  CLK, RST, sinR, sinL, soutR, soutL, op, Din, Dout
);
  input CLK;
  input RST;
  input sinR;
  input sinL;
  output soutR;
  output soutL;
  input [3 : 0] op;
  input [7 : 0] Din;
  output [7 : 0] Dout;
  wire op_3_IBUF_0;
  wire op_2_IBUF_1;
  wire op_1_IBUF_2;
  wire op_0_IBUF_3;
  wire Din_7_IBUF_4;
  wire Din_6_IBUF_5;
  wire Din_5_IBUF_6;
  wire Din_4_IBUF_7;
  wire Din_3_IBUF_8;
  wire Din_2_IBUF_9;
  wire Din_1_IBUF_10;
  wire Din_0_IBUF_11;
  wire CLK_BUFGP_12;
  wire RST_IBUF_13;
  wire sinR_IBUF_14;
  wire sinL_IBUF_15;
  wire soutL_OBUF_24;
  wire soutR_OBUF_25;
  wire Dout_7_26;
  wire Dout_6_27;
  wire Dout_5_28;
  wire Dout_4_29;
  wire Dout_3_30;
  wire Dout_2_31;
  wire Dout_1_32;
  wire Dout_0_33;
  wire \op<3>_inv ;
  wire _n0055_inv;
  wire _n0059_inv;
  wire Mmux__n004911;
  wire Mmux__n004921;
  wire Mmux__n004922_39;
  wire Mmux__n00498;
  wire N2;
  wire soutL_rstpot_68;
  wire soutR_rstpot_69;
  wire [7 : 0] _n0049;
  FDRE   Dout_0 (
    .C(CLK_BUFGP_12),
    .CE(\op<3>_inv ),
    .D(_n0049[0]),
    .R(RST_IBUF_13),
    .Q(Dout_0_33)
  );
  FDRE   Dout_1 (
    .C(CLK_BUFGP_12),
    .CE(\op<3>_inv ),
    .D(_n0049[1]),
    .R(RST_IBUF_13),
    .Q(Dout_1_32)
  );
  FDRE   Dout_2 (
    .C(CLK_BUFGP_12),
    .CE(\op<3>_inv ),
    .D(_n0049[2]),
    .R(RST_IBUF_13),
    .Q(Dout_2_31)
  );
  FDRE   Dout_3 (
    .C(CLK_BUFGP_12),
    .CE(\op<3>_inv ),
    .D(_n0049[3]),
    .R(RST_IBUF_13),
    .Q(Dout_3_30)
  );
  FDRE   Dout_4 (
    .C(CLK_BUFGP_12),
    .CE(\op<3>_inv ),
    .D(_n0049[4]),
    .R(RST_IBUF_13),
    .Q(Dout_4_29)
  );
  FDRE   Dout_5 (
    .C(CLK_BUFGP_12),
    .CE(\op<3>_inv ),
    .D(_n0049[5]),
    .R(RST_IBUF_13),
    .Q(Dout_5_28)
  );
  FDRE   Dout_6 (
    .C(CLK_BUFGP_12),
    .CE(\op<3>_inv ),
    .D(_n0049[6]),
    .R(RST_IBUF_13),
    .Q(Dout_6_27)
  );
  FDRE   Dout_7 (
    .C(CLK_BUFGP_12),
    .CE(\op<3>_inv ),
    .D(_n0049[7]),
    .R(RST_IBUF_13),
    .Q(Dout_7_26)
  );
  LUT3 #(
    .INIT ( 8'h9A ))
  Mmux__n0049111 (
    .I0(op_2_IBUF_1),
    .I1(op_0_IBUF_3),
    .I2(op_1_IBUF_2),
    .O(Mmux__n004911)
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  Mmux__n0049221 (
    .I0(op_1_IBUF_2),
    .I1(op_0_IBUF_3),
    .I2(op_2_IBUF_1),
    .O(Mmux__n004922_39)
  );
  LUT6 #(
    .INIT ( 64'hFFF8FF88F8F88888 ))
  Mmux__n004922 (
    .I0(Mmux__n004922_39),
    .I1(Din_1_IBUF_10),
    .I2(Mmux__n004911),
    .I3(Mmux__n004921),
    .I4(Dout_2_31),
    .I5(Dout_0_33),
    .O(_n0049[1])
  );
  LUT6 #(
    .INIT ( 64'hFFF8FF88F8F88888 ))
  Mmux__n004931 (
    .I0(Mmux__n004922_39),
    .I1(Din_2_IBUF_9),
    .I2(Mmux__n004911),
    .I3(Mmux__n004921),
    .I4(Dout_3_30),
    .I5(Dout_1_32),
    .O(_n0049[2])
  );
  LUT6 #(
    .INIT ( 64'hFFF8FF88F8F88888 ))
  Mmux__n004941 (
    .I0(Mmux__n004922_39),
    .I1(Din_3_IBUF_8),
    .I2(Mmux__n004911),
    .I3(Mmux__n004921),
    .I4(Dout_4_29),
    .I5(Dout_2_31),
    .O(_n0049[3])
  );
  LUT6 #(
    .INIT ( 64'hFFF8FF88F8F88888 ))
  Mmux__n004951 (
    .I0(Mmux__n004922_39),
    .I1(Din_4_IBUF_7),
    .I2(Mmux__n004911),
    .I3(Mmux__n004921),
    .I4(Dout_5_28),
    .I5(Dout_3_30),
    .O(_n0049[4])
  );
  LUT6 #(
    .INIT ( 64'hFFF8F8F8FF888888 ))
  Mmux__n004961 (
    .I0(Mmux__n004922_39),
    .I1(Din_5_IBUF_6),
    .I2(Mmux__n004911),
    .I3(Mmux__n004921),
    .I4(Dout_4_29),
    .I5(Dout_6_27),
    .O(_n0049[5])
  );
  LUT6 #(
    .INIT ( 64'hFFF8F8F8FF888888 ))
  Mmux__n004971 (
    .I0(Mmux__n004922_39),
    .I1(Din_6_IBUF_5),
    .I2(Mmux__n004911),
    .I3(Mmux__n004921),
    .I4(Dout_5_28),
    .I5(Dout_7_26),
    .O(_n0049[6])
  );
  LUT3 #(
    .INIT ( 8'h62 ))
  Mmux__n0049211 (
    .I0(op_0_IBUF_3),
    .I1(op_2_IBUF_1),
    .I2(op_1_IBUF_2),
    .O(Mmux__n004921)
  );
  LUT5 #(
    .INIT ( 32'h00000002 ))
  _n0055_inv1 (
    .I0(op_0_IBUF_3),
    .I1(op_1_IBUF_2),
    .I2(RST_IBUF_13),
    .I3(op_2_IBUF_1),
    .I4(op_3_IBUF_0),
    .O(_n0055_inv)
  );
  LUT5 #(
    .INIT ( 32'h00000002 ))
  _n0059_inv1 (
    .I0(op_1_IBUF_2),
    .I1(op_0_IBUF_3),
    .I2(RST_IBUF_13),
    .I3(op_2_IBUF_1),
    .I4(op_3_IBUF_0),
    .O(_n0059_inv)
  );
  LUT6 #(
    .INIT ( 64'hFCFA0CFAFC0A0C0A ))
  Mmux__n004981 (
    .I0(Din_7_IBUF_4),
    .I1(sinL_IBUF_15),
    .I2(op_2_IBUF_1),
    .I3(op_1_IBUF_2),
    .I4(Dout_6_27),
    .I5(Dout_7_26),
    .O(Mmux__n00498)
  );
  LUT6 #(
    .INIT ( 64'hFD757575A8202020 ))
  Mmux__n004982 (
    .I0(op_0_IBUF_3),
    .I1(op_2_IBUF_1),
    .I2(Dout_6_27),
    .I3(op_1_IBUF_2),
    .I4(Dout_0_33),
    .I5(Mmux__n00498),
    .O(_n0049[7])
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  Mmux__n00491_SW0 (
    .I0(op_0_IBUF_3),
    .I1(Din_0_IBUF_11),
    .I2(sinR_IBUF_14),
    .O(N2)
  );
  LUT6 #(
    .INIT ( 64'hFF353005CF350005 ))
  Mmux__n00491 (
    .I0(N2),
    .I1(op_0_IBUF_3),
    .I2(op_1_IBUF_2),
    .I3(op_2_IBUF_1),
    .I4(Dout_1_32),
    .I5(Dout_7_26),
    .O(_n0049[0])
  );
  IBUF   op_3_IBUF (
    .I(op[3]),
    .O(op_3_IBUF_0)
  );
  IBUF   op_2_IBUF (
    .I(op[2]),
    .O(op_2_IBUF_1)
  );
  IBUF   op_1_IBUF (
    .I(op[1]),
    .O(op_1_IBUF_2)
  );
  IBUF   op_0_IBUF (
    .I(op[0]),
    .O(op_0_IBUF_3)
  );
  IBUF   Din_7_IBUF (
    .I(Din[7]),
    .O(Din_7_IBUF_4)
  );
  IBUF   Din_6_IBUF (
    .I(Din[6]),
    .O(Din_6_IBUF_5)
  );
  IBUF   Din_5_IBUF (
    .I(Din[5]),
    .O(Din_5_IBUF_6)
  );
  IBUF   Din_4_IBUF (
    .I(Din[4]),
    .O(Din_4_IBUF_7)
  );
  IBUF   Din_3_IBUF (
    .I(Din[3]),
    .O(Din_3_IBUF_8)
  );
  IBUF   Din_2_IBUF (
    .I(Din[2]),
    .O(Din_2_IBUF_9)
  );
  IBUF   Din_1_IBUF (
    .I(Din[1]),
    .O(Din_1_IBUF_10)
  );
  IBUF   Din_0_IBUF (
    .I(Din[0]),
    .O(Din_0_IBUF_11)
  );
  IBUF   RST_IBUF (
    .I(RST),
    .O(RST_IBUF_13)
  );
  IBUF   sinR_IBUF (
    .I(sinR),
    .O(sinR_IBUF_14)
  );
  IBUF   sinL_IBUF (
    .I(sinL),
    .O(sinL_IBUF_15)
  );
  OBUF   Dout_7_OBUF (
    .I(Dout_7_26),
    .O(Dout[7])
  );
  OBUF   Dout_6_OBUF (
    .I(Dout_6_27),
    .O(Dout[6])
  );
  OBUF   Dout_5_OBUF (
    .I(Dout_5_28),
    .O(Dout[5])
  );
  OBUF   Dout_4_OBUF (
    .I(Dout_4_29),
    .O(Dout[4])
  );
  OBUF   Dout_3_OBUF (
    .I(Dout_3_30),
    .O(Dout[3])
  );
  OBUF   Dout_2_OBUF (
    .I(Dout_2_31),
    .O(Dout[2])
  );
  OBUF   Dout_1_OBUF (
    .I(Dout_1_32),
    .O(Dout[1])
  );
  OBUF   Dout_0_OBUF (
    .I(Dout_0_33),
    .O(Dout[0])
  );
  OBUF   soutR_OBUF (
    .I(soutR_OBUF_25),
    .O(soutR)
  );
  OBUF   soutL_OBUF (
    .I(soutL_OBUF_24),
    .O(soutL)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  soutL_rstpot (
    .I0(_n0055_inv),
    .I1(soutL_OBUF_24),
    .I2(Dout_7_26),
    .O(soutL_rstpot_68)
  );
  FD   soutL_50 (
    .C(CLK_BUFGP_12),
    .D(soutL_rstpot_68),
    .Q(soutL_OBUF_24)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  soutR_rstpot (
    .I0(_n0059_inv),
    .I1(soutR_OBUF_25),
    .I2(Dout_0_33),
    .O(soutR_rstpot_69)
  );
  FD   soutR_52 (
    .C(CLK_BUFGP_12),
    .D(soutR_rstpot_69),
    .Q(soutR_OBUF_25)
  );
  BUFGP   CLK_BUFGP (
    .I(CLK),
    .O(CLK_BUFGP_12)
  );
  INV   \op<3>_inv1_INV_0  (
    .I(op_3_IBUF_0),
    .O(\op<3>_inv )
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

