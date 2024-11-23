
module ddr3controllerqsys (
	clk_clk,
	reset_reset_n,
	memory_mem_a,
	memory_mem_ba,
	memory_mem_ck,
	memory_mem_ck_n,
	memory_mem_cke,
	memory_mem_cs_n,
	memory_mem_dm,
	memory_mem_ras_n,
	memory_mem_cas_n,
	memory_mem_we_n,
	memory_mem_reset_n,
	memory_mem_dq,
	memory_mem_dqs,
	memory_mem_dqs_n,
	memory_mem_odt,
	oct_rzqin,
	mem_if_ddr3_emif_0_pll_ref_clk_clk,
	mem_if_ddr3_emif_0_global_reset_reset_n,
	mem_if_ddr3_emif_0_soft_reset_reset_n,
	mem_if_ddr3_emif_0_pll_sharing_pll_mem_clk,
	mem_if_ddr3_emif_0_pll_sharing_pll_write_clk,
	mem_if_ddr3_emif_0_pll_sharing_pll_locked,
	mem_if_ddr3_emif_0_pll_sharing_pll_write_clk_pre_phy_clk,
	mem_if_ddr3_emif_0_pll_sharing_pll_addr_cmd_clk,
	mem_if_ddr3_emif_0_pll_sharing_pll_avl_clk,
	mem_if_ddr3_emif_0_pll_sharing_pll_config_clk,
	mem_if_ddr3_emif_0_pll_sharing_pll_mem_phy_clk,
	mem_if_ddr3_emif_0_pll_sharing_afi_phy_clk,
	mem_if_ddr3_emif_0_pll_sharing_pll_avl_phy_clk,
	mem_if_ddr3_emif_0_status_local_init_done,
	mem_if_ddr3_emif_0_status_local_cal_success,
	mem_if_ddr3_emif_0_status_local_cal_fail,
	mem_if_ddr3_emif_0_avl_waitrequest_n,
	mem_if_ddr3_emif_0_avl_beginbursttransfer,
	mem_if_ddr3_emif_0_avl_address,
	mem_if_ddr3_emif_0_avl_readdatavalid,
	mem_if_ddr3_emif_0_avl_readdata,
	mem_if_ddr3_emif_0_avl_writedata,
	mem_if_ddr3_emif_0_avl_byteenable,
	mem_if_ddr3_emif_0_avl_read,
	mem_if_ddr3_emif_0_avl_write,
	mem_if_ddr3_emif_0_avl_burstcount,
	mem_if_ddr3_emif_0_afi_reset_export_reset_n,
	mem_if_ddr3_emif_0_afi_reset_reset_n,
	mem_if_ddr3_emif_0_afi_half_clk_clk,
	mem_if_ddr3_emif_0_afi_clk_clk,
	clk_0_clk_reset_reset_n,
	clk_0_clk_clk);	

	input		clk_clk;
	input		reset_reset_n;
	output	[12:0]	memory_mem_a;
	output	[2:0]	memory_mem_ba;
	output	[0:0]	memory_mem_ck;
	output	[0:0]	memory_mem_ck_n;
	output	[0:0]	memory_mem_cke;
	output	[0:0]	memory_mem_cs_n;
	output	[0:0]	memory_mem_dm;
	output	[0:0]	memory_mem_ras_n;
	output	[0:0]	memory_mem_cas_n;
	output	[0:0]	memory_mem_we_n;
	output		memory_mem_reset_n;
	inout	[7:0]	memory_mem_dq;
	inout	[0:0]	memory_mem_dqs;
	inout	[0:0]	memory_mem_dqs_n;
	output	[0:0]	memory_mem_odt;
	input		oct_rzqin;
	input		mem_if_ddr3_emif_0_pll_ref_clk_clk;
	input		mem_if_ddr3_emif_0_global_reset_reset_n;
	input		mem_if_ddr3_emif_0_soft_reset_reset_n;
	output		mem_if_ddr3_emif_0_pll_sharing_pll_mem_clk;
	output		mem_if_ddr3_emif_0_pll_sharing_pll_write_clk;
	output		mem_if_ddr3_emif_0_pll_sharing_pll_locked;
	output		mem_if_ddr3_emif_0_pll_sharing_pll_write_clk_pre_phy_clk;
	output		mem_if_ddr3_emif_0_pll_sharing_pll_addr_cmd_clk;
	output		mem_if_ddr3_emif_0_pll_sharing_pll_avl_clk;
	output		mem_if_ddr3_emif_0_pll_sharing_pll_config_clk;
	output		mem_if_ddr3_emif_0_pll_sharing_pll_mem_phy_clk;
	output		mem_if_ddr3_emif_0_pll_sharing_afi_phy_clk;
	output		mem_if_ddr3_emif_0_pll_sharing_pll_avl_phy_clk;
	output		mem_if_ddr3_emif_0_status_local_init_done;
	output		mem_if_ddr3_emif_0_status_local_cal_success;
	output		mem_if_ddr3_emif_0_status_local_cal_fail;
	output		mem_if_ddr3_emif_0_avl_waitrequest_n;
	input		mem_if_ddr3_emif_0_avl_beginbursttransfer;
	input	[20:0]	mem_if_ddr3_emif_0_avl_address;
	output		mem_if_ddr3_emif_0_avl_readdatavalid;
	output	[31:0]	mem_if_ddr3_emif_0_avl_readdata;
	input	[31:0]	mem_if_ddr3_emif_0_avl_writedata;
	input	[3:0]	mem_if_ddr3_emif_0_avl_byteenable;
	input		mem_if_ddr3_emif_0_avl_read;
	input		mem_if_ddr3_emif_0_avl_write;
	input	[2:0]	mem_if_ddr3_emif_0_avl_burstcount;
	output		mem_if_ddr3_emif_0_afi_reset_export_reset_n;
	output		mem_if_ddr3_emif_0_afi_reset_reset_n;
	output		mem_if_ddr3_emif_0_afi_half_clk_clk;
	output		mem_if_ddr3_emif_0_afi_clk_clk;
	output		clk_0_clk_reset_reset_n;
	output		clk_0_clk_clk;
endmodule
