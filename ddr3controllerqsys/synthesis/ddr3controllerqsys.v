// ddr3controllerqsys.v

// Generated using ACDS version 23.1 993

`timescale 1 ps / 1 ps
module ddr3controllerqsys (
		input  wire        clk_clk,                                                  //                                 clk.clk
		output wire        clk_0_clk_clk,                                            //                           clk_0_clk.clk
		output wire        clk_0_clk_reset_reset_n,                                  //                     clk_0_clk_reset.reset_n
		output wire        mem_if_ddr3_emif_0_afi_clk_clk,                           //          mem_if_ddr3_emif_0_afi_clk.clk
		output wire        mem_if_ddr3_emif_0_afi_half_clk_clk,                      //     mem_if_ddr3_emif_0_afi_half_clk.clk
		output wire        mem_if_ddr3_emif_0_afi_reset_reset_n,                     //        mem_if_ddr3_emif_0_afi_reset.reset_n
		output wire        mem_if_ddr3_emif_0_afi_reset_export_reset_n,              // mem_if_ddr3_emif_0_afi_reset_export.reset_n
		output wire        mem_if_ddr3_emif_0_avl_waitrequest_n,                     //              mem_if_ddr3_emif_0_avl.waitrequest_n
		input  wire        mem_if_ddr3_emif_0_avl_beginbursttransfer,                //                                    .beginbursttransfer
		input  wire [20:0] mem_if_ddr3_emif_0_avl_address,                           //                                    .address
		output wire        mem_if_ddr3_emif_0_avl_readdatavalid,                     //                                    .readdatavalid
		output wire [31:0] mem_if_ddr3_emif_0_avl_readdata,                          //                                    .readdata
		input  wire [31:0] mem_if_ddr3_emif_0_avl_writedata,                         //                                    .writedata
		input  wire [3:0]  mem_if_ddr3_emif_0_avl_byteenable,                        //                                    .byteenable
		input  wire        mem_if_ddr3_emif_0_avl_read,                              //                                    .read
		input  wire        mem_if_ddr3_emif_0_avl_write,                             //                                    .write
		input  wire [2:0]  mem_if_ddr3_emif_0_avl_burstcount,                        //                                    .burstcount
		input  wire        mem_if_ddr3_emif_0_global_reset_reset_n,                  //     mem_if_ddr3_emif_0_global_reset.reset_n
		input  wire        mem_if_ddr3_emif_0_pll_ref_clk_clk,                       //      mem_if_ddr3_emif_0_pll_ref_clk.clk
		output wire        mem_if_ddr3_emif_0_pll_sharing_pll_mem_clk,               //      mem_if_ddr3_emif_0_pll_sharing.pll_mem_clk
		output wire        mem_if_ddr3_emif_0_pll_sharing_pll_write_clk,             //                                    .pll_write_clk
		output wire        mem_if_ddr3_emif_0_pll_sharing_pll_locked,                //                                    .pll_locked
		output wire        mem_if_ddr3_emif_0_pll_sharing_pll_write_clk_pre_phy_clk, //                                    .pll_write_clk_pre_phy_clk
		output wire        mem_if_ddr3_emif_0_pll_sharing_pll_addr_cmd_clk,          //                                    .pll_addr_cmd_clk
		output wire        mem_if_ddr3_emif_0_pll_sharing_pll_avl_clk,               //                                    .pll_avl_clk
		output wire        mem_if_ddr3_emif_0_pll_sharing_pll_config_clk,            //                                    .pll_config_clk
		output wire        mem_if_ddr3_emif_0_pll_sharing_pll_mem_phy_clk,           //                                    .pll_mem_phy_clk
		output wire        mem_if_ddr3_emif_0_pll_sharing_afi_phy_clk,               //                                    .afi_phy_clk
		output wire        mem_if_ddr3_emif_0_pll_sharing_pll_avl_phy_clk,           //                                    .pll_avl_phy_clk
		input  wire        mem_if_ddr3_emif_0_soft_reset_reset_n,                    //       mem_if_ddr3_emif_0_soft_reset.reset_n
		output wire        mem_if_ddr3_emif_0_status_local_init_done,                //           mem_if_ddr3_emif_0_status.local_init_done
		output wire        mem_if_ddr3_emif_0_status_local_cal_success,              //                                    .local_cal_success
		output wire        mem_if_ddr3_emif_0_status_local_cal_fail,                 //                                    .local_cal_fail
		output wire [12:0] memory_mem_a,                                             //                              memory.mem_a
		output wire [2:0]  memory_mem_ba,                                            //                                    .mem_ba
		output wire [0:0]  memory_mem_ck,                                            //                                    .mem_ck
		output wire [0:0]  memory_mem_ck_n,                                          //                                    .mem_ck_n
		output wire [0:0]  memory_mem_cke,                                           //                                    .mem_cke
		output wire [0:0]  memory_mem_cs_n,                                          //                                    .mem_cs_n
		output wire [0:0]  memory_mem_dm,                                            //                                    .mem_dm
		output wire [0:0]  memory_mem_ras_n,                                         //                                    .mem_ras_n
		output wire [0:0]  memory_mem_cas_n,                                         //                                    .mem_cas_n
		output wire [0:0]  memory_mem_we_n,                                          //                                    .mem_we_n
		output wire        memory_mem_reset_n,                                       //                                    .mem_reset_n
		inout  wire [7:0]  memory_mem_dq,                                            //                                    .mem_dq
		inout  wire [0:0]  memory_mem_dqs,                                           //                                    .mem_dqs
		inout  wire [0:0]  memory_mem_dqs_n,                                         //                                    .mem_dqs_n
		output wire [0:0]  memory_mem_odt,                                           //                                    .mem_odt
		input  wire        oct_rzqin,                                                //                                 oct.rzqin
		input  wire        reset_reset_n                                             //                               reset.reset_n
	);

	ddr3controllerqsys_mem_if_ddr3_emif_0 mem_if_ddr3_emif_0 (
		.pll_ref_clk               (mem_if_ddr3_emif_0_pll_ref_clk_clk),                       //      pll_ref_clk.clk
		.global_reset_n            (mem_if_ddr3_emif_0_global_reset_reset_n),                  //     global_reset.reset_n
		.soft_reset_n              (mem_if_ddr3_emif_0_soft_reset_reset_n),                    //       soft_reset.reset_n
		.afi_clk                   (mem_if_ddr3_emif_0_afi_clk_clk),                           //          afi_clk.clk
		.afi_half_clk              (mem_if_ddr3_emif_0_afi_half_clk_clk),                      //     afi_half_clk.clk
		.afi_reset_n               (mem_if_ddr3_emif_0_afi_reset_reset_n),                     //        afi_reset.reset_n
		.afi_reset_export_n        (mem_if_ddr3_emif_0_afi_reset_export_reset_n),              // afi_reset_export.reset_n
		.mem_a                     (memory_mem_a),                                             //           memory.mem_a
		.mem_ba                    (memory_mem_ba),                                            //                 .mem_ba
		.mem_ck                    (memory_mem_ck),                                            //                 .mem_ck
		.mem_ck_n                  (memory_mem_ck_n),                                          //                 .mem_ck_n
		.mem_cke                   (memory_mem_cke),                                           //                 .mem_cke
		.mem_cs_n                  (memory_mem_cs_n),                                          //                 .mem_cs_n
		.mem_dm                    (memory_mem_dm),                                            //                 .mem_dm
		.mem_ras_n                 (memory_mem_ras_n),                                         //                 .mem_ras_n
		.mem_cas_n                 (memory_mem_cas_n),                                         //                 .mem_cas_n
		.mem_we_n                  (memory_mem_we_n),                                          //                 .mem_we_n
		.mem_reset_n               (memory_mem_reset_n),                                       //                 .mem_reset_n
		.mem_dq                    (memory_mem_dq),                                            //                 .mem_dq
		.mem_dqs                   (memory_mem_dqs),                                           //                 .mem_dqs
		.mem_dqs_n                 (memory_mem_dqs_n),                                         //                 .mem_dqs_n
		.mem_odt                   (memory_mem_odt),                                           //                 .mem_odt
		.avl_ready                 (mem_if_ddr3_emif_0_avl_waitrequest_n),                     //              avl.waitrequest_n
		.avl_burstbegin            (mem_if_ddr3_emif_0_avl_beginbursttransfer),                //                 .beginbursttransfer
		.avl_addr                  (mem_if_ddr3_emif_0_avl_address),                           //                 .address
		.avl_rdata_valid           (mem_if_ddr3_emif_0_avl_readdatavalid),                     //                 .readdatavalid
		.avl_rdata                 (mem_if_ddr3_emif_0_avl_readdata),                          //                 .readdata
		.avl_wdata                 (mem_if_ddr3_emif_0_avl_writedata),                         //                 .writedata
		.avl_be                    (mem_if_ddr3_emif_0_avl_byteenable),                        //                 .byteenable
		.avl_read_req              (mem_if_ddr3_emif_0_avl_read),                              //                 .read
		.avl_write_req             (mem_if_ddr3_emif_0_avl_write),                             //                 .write
		.avl_size                  (mem_if_ddr3_emif_0_avl_burstcount),                        //                 .burstcount
		.local_init_done           (mem_if_ddr3_emif_0_status_local_init_done),                //           status.local_init_done
		.local_cal_success         (mem_if_ddr3_emif_0_status_local_cal_success),              //                 .local_cal_success
		.local_cal_fail            (mem_if_ddr3_emif_0_status_local_cal_fail),                 //                 .local_cal_fail
		.oct_rzqin                 (oct_rzqin),                                                //              oct.rzqin
		.pll_mem_clk               (mem_if_ddr3_emif_0_pll_sharing_pll_mem_clk),               //      pll_sharing.pll_mem_clk
		.pll_write_clk             (mem_if_ddr3_emif_0_pll_sharing_pll_write_clk),             //                 .pll_write_clk
		.pll_locked                (mem_if_ddr3_emif_0_pll_sharing_pll_locked),                //                 .pll_locked
		.pll_write_clk_pre_phy_clk (mem_if_ddr3_emif_0_pll_sharing_pll_write_clk_pre_phy_clk), //                 .pll_write_clk_pre_phy_clk
		.pll_addr_cmd_clk          (mem_if_ddr3_emif_0_pll_sharing_pll_addr_cmd_clk),          //                 .pll_addr_cmd_clk
		.pll_avl_clk               (mem_if_ddr3_emif_0_pll_sharing_pll_avl_clk),               //                 .pll_avl_clk
		.pll_config_clk            (mem_if_ddr3_emif_0_pll_sharing_pll_config_clk),            //                 .pll_config_clk
		.pll_mem_phy_clk           (mem_if_ddr3_emif_0_pll_sharing_pll_mem_phy_clk),           //                 .pll_mem_phy_clk
		.afi_phy_clk               (mem_if_ddr3_emif_0_pll_sharing_afi_phy_clk),               //                 .afi_phy_clk
		.pll_avl_phy_clk           (mem_if_ddr3_emif_0_pll_sharing_pll_avl_phy_clk)            //                 .pll_avl_phy_clk
	);

	assign clk_0_clk_clk = clk_clk;

	assign clk_0_clk_reset_reset_n = reset_reset_n;

endmodule
