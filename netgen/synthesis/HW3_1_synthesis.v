////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: HW3_1_synthesis.v
// /___/   /\     Timestamp: Thu Jun 18 18:42:41 2015
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim HW3_1.ngc HW3_1_synthesis.v 
// Device	: xa7a100t-2I-csg324
// Input file	: HW3_1.ngc
// Output file	: /home/joshua/Documents/HW3/netgen/synthesis/HW3_1_synthesis.v
// # of Modules	: 1
// Design Name	: HW3_1
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

module HW3_1 (
  en, clk, rst, in0, in1, out, outbar
);
  input en;
  input clk;
  input rst;
  input [0 : 0] in0;
  input [0 : 0] in1;
  output [0 : 0] out;
  output [0 : 0] outbar;
  wire in0_0_IBUF_0;
  wire in1_0_IBUF_1;
  wire en_IBUF_2;
  wire clk_BUFGP_3;
  wire rst_IBUF_4;
  wire \in0[0]_in1[0]_MUX_1_o ;
  wire out_0_6;
  wire outbar_0_OBUF_7;
  wire out_0_1_15;
  FDP   out_0 (
    .C(clk_BUFGP_3),
    .D(\in0[0]_in1[0]_MUX_1_o ),
    .PRE(rst_IBUF_4),
    .Q(out_0_6)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_in0[0]_in1[0]_MUX_1_o11  (
    .I0(en_IBUF_2),
    .I1(in0_0_IBUF_0),
    .I2(in1_0_IBUF_1),
    .O(\in0[0]_in1[0]_MUX_1_o )
  );
  IBUF   in0_0_IBUF (
    .I(in0[0]),
    .O(in0_0_IBUF_0)
  );
  IBUF   in1_0_IBUF (
    .I(in1[0]),
    .O(in1_0_IBUF_1)
  );
  IBUF   en_IBUF (
    .I(en),
    .O(en_IBUF_2)
  );
  IBUF   rst_IBUF (
    .I(rst),
    .O(rst_IBUF_4)
  );
  OBUF   out_0_OBUF (
    .I(out_0_1_15),
    .O(out[0])
  );
  OBUF   outbar_0_OBUF (
    .I(outbar_0_OBUF_7),
    .O(outbar[0])
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_3)
  );
  INV   outbar1_INV_0 (
    .I(out_0_6),
    .O(outbar_0_OBUF_7)
  );
  FDP   out_0_1 (
    .C(clk_BUFGP_3),
    .D(\in0[0]_in1[0]_MUX_1_o ),
    .PRE(rst_IBUF_4),
    .Q(out_0_1_15)
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

