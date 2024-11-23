module picosoc{
  input clk,
  input resetn,

  output        iomem_valid,
	input         iomem_ready,
	output [ 3:0] iomem_wstrb,
	output [31:0] iomem_addr,
	output [31:0] iomem_wdata,
	input  [31:0] iomem_rdata,




};

  parameter integer MEM_WORDS = 256;

  wire mem_valid;
  wire mem_instr;
  wire mem_ready;

  wire [31:0] mem_addr;
  wire [31:0] mem_wdata;
  wire [3 :0]  mem_wstrb;
  wire [31:0] mem_rdata;


  picorv32 #(



  ) cpu {
    .clk        (clk      ),
    .resetn     (resetn   ),
    .mem_valid  (mem_valid),
    .mem_instr  (mem_instr),
    .mem_ready  (mem_ready),
    .mem_wdata  (mem_wdata),
    .mem_addr   (mem_addr ),
    .mem_wstrb  (mem_wstrb),
    .mem_rdata  (mem_rdata),
  }; 

  ddr3_mem(
    .clk(clk),
    
    
  );

 
endmodule


// Storing instructions
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
