// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 13.1.0 Build 162 10/23/2013 SJ Full Version"
// CREATED		"Thu Sep 29 18:27:21 2022"

module digital_tube(
	clk,
	q,
	clk_sel,
	d_out,
	reset
);


input wire	clk;
input wire	clk_sel;
input wire	reset;
output wire	[6:0] q;
output wire	[3:0] d_out;

wire   clk_5;
wire	[3:0] d;
wire	[6:0] q_ALTERA_SYNTHESIZED;
wire	[3:0] SYNTHESIZED_WIRE_0;
wire	[3:0] SYNTHESIZED_WIRE_1;


f_div b2v_inst3(
.clk_50M(clk),
.reset(reset),
.f_5M(clk_5)
);


JSQ	b2v_inst(
	.clk(clk_5),
	.reset(reset),
	.qh(SYNTHESIZED_WIRE_0),
	.ql(SYNTHESIZED_WIRE_1));


px	b2v_inst1(
	
	.sh(SYNTHESIZED_WIRE_0),
	.sl(SYNTHESIZED_WIRE_1),
	.q(d),
	.sel(clk_sel)
	);


ym	b2v_inst2(
	.D3(d[3]),
	.D2(d[2]),
	.D1(d[1]),
	.D0(d[0]),
	.a(q_ALTERA_SYNTHESIZED[0]),
	.b(q_ALTERA_SYNTHESIZED[1]),
	.c(q_ALTERA_SYNTHESIZED[2]),
	.d(q_ALTERA_SYNTHESIZED[3]),
	.e(q_ALTERA_SYNTHESIZED[4]),
	.f(q_ALTERA_SYNTHESIZED[5]),
	.g(q_ALTERA_SYNTHESIZED[6])
	);

assign	q = q_ALTERA_SYNTHESIZED;
assign	d_out = d;

endmodule
