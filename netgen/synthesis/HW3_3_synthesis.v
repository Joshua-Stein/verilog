////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: HW3_3_synthesis.v
// /___/   /\     Timestamp: Sun Jun 21 13:00:16 2015
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim HW3_3.ngc HW3_3_synthesis.v 
// Device	: xa7a100t-2I-csg324
// Input file	: HW3_3.ngc
// Output file	: /home/joshua/Documents/HW3/netgen/synthesis/HW3_3_synthesis.v
// # of Modules	: 1
// Design Name	: HW3_3
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

module HW3_3 (
  CLK, RST, out
);
  input CLK;
  input RST;
  output [3 : 0] out;
  wire CLK_BUFGP_0;
  wire RST_IBUF_1;
  wire out_0_2;
  wire out_1_3;
  wire out_2_4;
  wire out_3_5;
  wire out_0_rstpot_12;
  wire out_1_rstpot_13;
  wire out_2_rstpot_14;
  wire out_3_rstpot_15;
  IBUF   RST_IBUF (
    .I(RST),
    .O(RST_IBUF_1)
  );
  OBUF   out_3_OBUF (
    .I(out_3_5),
    .O(out[3])
  );
  OBUF   out_2_OBUF (
    .I(out_2_4),
    .O(out[2])
  );
  OBUF   out_1_OBUF (
    .I(out_1_3),
    .O(out[1])
  );
  OBUF   out_0_OBUF (
    .I(out_0_2),
    .O(out[0])
  );
  FD #(
    .INIT ( 1'b0 ))
  out_0 (
    .C(CLK_BUFGP_0),
    .D(out_0_rstpot_12),
    .Q(out_0_2)
  );
  FD #(
    .INIT ( 1'b0 ))
  out_1 (
    .C(CLK_BUFGP_0),
    .D(out_1_rstpot_13),
    .Q(out_1_3)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  out_0_rstpot (
    .I0(RST_IBUF_1),
    .I1(out_0_2),
    .O(out_0_rstpot_12)
  );
  LUT5 #(
    .INIT ( 32'h14140414 ))
  out_1_rstpot (
    .I0(RST_IBUF_1),
    .I1(out_1_3),
    .I2(out_0_2),
    .I3(out_3_5),
    .I4(out_2_4),
    .O(out_1_rstpot_13)
  );
  FD #(
    .INIT ( 1'b0 ))
  out_2 (
    .C(CLK_BUFGP_0),
    .D(out_2_rstpot_14),
    .Q(out_2_4)
  );
  FD #(
    .INIT ( 1'b0 ))
  out_3 (
    .C(CLK_BUFGP_0),
    .D(out_3_rstpot_15),
    .Q(out_3_5)
  );
  LUT5 #(
    .INIT ( 32'h14404444 ))
  out_3_rstpot (
    .I0(RST_IBUF_1),
    .I1(out_3_5),
    .I2(out_2_4),
    .I3(out_1_3),
    .I4(out_0_2),
    .O(out_3_rstpot_15)
  );
  LUT4 #(
    .INIT ( 16'h1444 ))
  out_2_rstpot (
    .I0(RST_IBUF_1),
    .I1(out_2_4),
    .I2(out_1_3),
    .I3(out_0_2),
    .O(out_2_rstpot_14)
  );
  BUFGP   CLK_BUFGP (
    .I(CLK),
    .O(CLK_BUFGP_0)
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

