////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: LED_synthesis.v
// /___/   /\     Timestamp: Thu Jun 18 07:14:02 2015
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim LED.ngc LED_synthesis.v 
// Device	: xa7a100t-2I-csg324
// Input file	: LED.ngc
// Output file	: /home/joshua/Documents/circuit1/netgen/synthesis/LED_synthesis.v
// # of Modules	: 1
// Design Name	: LED
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

module LED (
N, outLED
);
  input [3 : 0] N;
  output [7 : 0] outLED;
  wire N_3_IBUF_0;
  wire N_2_IBUF_1;
  wire N_1_IBUF_2;
  wire N_0_IBUF_3;
  wire outLED_7_OBUF_4;
  wire outLED_6_OBUF_5;
  wire outLED_5_OBUF_6;
  wire outLED_4_OBUF_7;
  wire outLED_3_OBUF_8;
  wire outLED_2_OBUF_9;
  wire outLED_1_OBUF_10;
  wire outLED_0_OBUF_11;
  LUT3 #(
    .INIT ( 8'h57 ))
  Mram_outLED12 (
    .I0(N_3_IBUF_0),
    .I1(N_2_IBUF_1),
    .I2(N_1_IBUF_2),
    .O(outLED_0_OBUF_11)
  );
  LUT4 #(
    .INIT ( 16'hFEBA ))
  Mram_outLED31 (
    .I0(N_0_IBUF_3),
    .I1(N_1_IBUF_2),
    .I2(N_2_IBUF_1),
    .I3(N_3_IBUF_0),
    .O(outLED_3_OBUF_8)
  );
  LUT4 #(
    .INIT ( 16'hFA8E ))
  Mram_outLED21 (
    .I0(N_1_IBUF_2),
    .I1(N_0_IBUF_3),
    .I2(N_2_IBUF_1),
    .I3(N_3_IBUF_0),
    .O(outLED_2_OBUF_9)
  );
  LUT4 #(
    .INIT ( 16'hEE91 ))
  Mram_outLED111 (
    .I0(N_2_IBUF_1),
    .I1(N_1_IBUF_2),
    .I2(N_0_IBUF_3),
    .I3(N_3_IBUF_0),
    .O(outLED_1_OBUF_10)
  );
  LUT4 #(
    .INIT ( 16'hFA14 ))
  Mram_outLED71 (
    .I0(N_1_IBUF_2),
    .I1(N_0_IBUF_3),
    .I2(N_2_IBUF_1),
    .I3(N_3_IBUF_0),
    .O(outLED_7_OBUF_4)
  );
  LUT4 #(
    .INIT ( 16'hA8AC ))
  Mram_outLED51 (
    .I0(N_3_IBUF_0),
    .I1(N_1_IBUF_2),
    .I2(N_2_IBUF_1),
    .I3(N_0_IBUF_3),
    .O(outLED_5_OBUF_6)
  );
  LUT4 #(
    .INIT ( 16'hEDCA ))
  Mram_outLED41 (
    .I0(N_0_IBUF_3),
    .I1(N_3_IBUF_0),
    .I2(N_1_IBUF_2),
    .I3(N_2_IBUF_1),
    .O(outLED_4_OBUF_7)
  );
  LUT4 #(
    .INIT ( 16'hCAE8 ))
  Mram_outLED61 (
    .I0(N_2_IBUF_1),
    .I1(N_3_IBUF_0),
    .I2(N_1_IBUF_2),
    .I3(N_0_IBUF_3),
    .O(outLED_6_OBUF_5)
  );
  IBUF   N_3_IBUF (
    .I(N[3]),
    .O(N_3_IBUF_0)
  );
  IBUF   N_2_IBUF (
    .I(N[2]),
    .O(N_2_IBUF_1)
  );
  IBUF   N_1_IBUF (
    .I(N[1]),
    .O(N_1_IBUF_2)
  );
  IBUF   N_0_IBUF (
    .I(N[0]),
    .O(N_0_IBUF_3)
  );
  OBUF   outLED_7_OBUF (
    .I(outLED_7_OBUF_4),
    .O(outLED[7])
  );
  OBUF   outLED_6_OBUF (
    .I(outLED_6_OBUF_5),
    .O(outLED[6])
  );
  OBUF   outLED_5_OBUF (
    .I(outLED_5_OBUF_6),
    .O(outLED[5])
  );
  OBUF   outLED_4_OBUF (
    .I(outLED_4_OBUF_7),
    .O(outLED[4])
  );
  OBUF   outLED_3_OBUF (
    .I(outLED_3_OBUF_8),
    .O(outLED[3])
  );
  OBUF   outLED_2_OBUF (
    .I(outLED_2_OBUF_9),
    .O(outLED[2])
  );
  OBUF   outLED_1_OBUF (
    .I(outLED_1_OBUF_10),
    .O(outLED[1])
  );
  OBUF   outLED_0_OBUF (
    .I(outLED_0_OBUF_11),
    .O(outLED[0])
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

