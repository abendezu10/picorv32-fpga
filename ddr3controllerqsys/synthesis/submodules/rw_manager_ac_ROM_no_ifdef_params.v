// (C) 2001-2024 Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions and other 
// software and tools, and its AMPP partner logic functions, and any output 
// files from any of the foregoing (including device programming or simulation 
// files), and any associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License Subscription 
// Agreement, Intel FPGA IP License Agreement, or other applicable 
// license agreement, including, without limitation, that your use is for the 
// sole purpose of programming logic devices manufactured by Intel and sold by 
// Intel or its authorized distributors.  Please refer to the applicable 
// agreement for further details.







// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module rw_manager_ac_ROM_no_ifdef_params (
	clock,
	data,
	rdaddress,
	wraddress,
	wren,
	q);

	parameter ROM_INIT_FILE_NAME = "AC_ROM.hex";

	input	  clock;
	input	[31:0]  data;
	input	[5:0]  rdaddress;
	input	[5:0]  wraddress;
	input	  wren;
	output	[31:0]  q;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri1	  clock;
	tri0	  wren;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire [31:0] sub_wire0;
	wire [31:0] q = sub_wire0[31:0];
	

	altsyncram	altsyncram_component (
				.address_a (wraddress),
				.clock0 (clock),
				.data_a (data),
				.wren_a (wren),
				.address_b (rdaddress),
				.q_b (sub_wire0),
				.aclr0 (1'b0),
				.aclr1 (1'b0),
				.addressstall_a (1'b0),
				.addressstall_b (1'b0),
				.byteena_a (1'b1),
				.byteena_b (1'b1),
				.clock1 (1'b1),
				.clocken0 (1'b1),
				.clocken1 (1'b1),
				.clocken2 (1'b1),
				.clocken3 (1'b1),
				.data_b ({32{1'b1}}),
				.eccstatus (),
				.q_a (),
//synthesis translate_off																	
				.rden_a (1'b0),
//synthesis translate_on																		
				.rden_b (1'b1),
				.wren_b (1'b0));
	defparam
		altsyncram_component.address_aclr_b = "NONE",
		altsyncram_component.address_reg_b = "CLOCK0",
		altsyncram_component.clock_enable_input_a = "BYPASS",
		altsyncram_component.clock_enable_input_b = "BYPASS",
		altsyncram_component.clock_enable_output_b = "BYPASS",
`ifdef NO_PLI
		altsyncram_component.init_file = "AC_ROM.rif"
`else
		altsyncram_component.init_file = ROM_INIT_FILE_NAME
`endif
,
		altsyncram_component.intended_device_family = "Stratix III",
		altsyncram_component.lpm_type = "altsyncram",
		altsyncram_component.numwords_a = 40,
		altsyncram_component.numwords_b = 40,
		altsyncram_component.operation_mode = "DUAL_PORT",
		altsyncram_component.outdata_aclr_b = "NONE",
		altsyncram_component.outdata_reg_b = "CLOCK0",
		altsyncram_component.power_up_uninitialized = "FALSE",
		altsyncram_component.ram_block_type = "MLAB",
		altsyncram_component.widthad_a = 6,
		altsyncram_component.widthad_b = 6,
		altsyncram_component.width_a = 32,
		altsyncram_component.width_b = 32,
		altsyncram_component.width_byteena_a = 1;


endmodule

