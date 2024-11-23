module ddr3_mem(
  input clk,
  input resetn,
  output  [12:0]  mem_a,
  output  [2 :0]  mem_ba,
  output          mem_ck,
  output          mem_ck_n,
  output          mem_cke,
  output          mem_cs_n,
  output          mem_dm,
  output          mem_ras_n,
  output          mem_cas_n,
  output          mem_we_n,
  output          mem_reset_n,
  inout   [7 :0]  mem_dq,
  inout           mem_dqs,
  inout           mem_dqs_n,
  output          mem_odt,

  input   [20:0]  mem_if_ddr3_emif_0_avl_address,
  input   [31:0]  mem_if_ddr3_emif_0_avl_writedata,
  input           mem_if_ddr3_emif_0_avl_read,
  input           mem_if_ddr3_emif_0_avl_write,

  output  [31:0]  mem_if_ddr3_emif_0_avl_readdata,
  output          mem_if_ddr3_emif_0_avl_readdatavalid,
  output          mem_if_ddr3_emif_0_status_local_init_done
);
  

endmodule

