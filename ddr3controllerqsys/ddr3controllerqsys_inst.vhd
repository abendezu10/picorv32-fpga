	component ddr3controllerqsys is
		port (
			clk_clk                                                  : in    std_logic                     := 'X';             -- clk
			reset_reset_n                                            : in    std_logic                     := 'X';             -- reset_n
			memory_mem_a                                             : out   std_logic_vector(12 downto 0);                    -- mem_a
			memory_mem_ba                                            : out   std_logic_vector(2 downto 0);                     -- mem_ba
			memory_mem_ck                                            : out   std_logic_vector(0 downto 0);                     -- mem_ck
			memory_mem_ck_n                                          : out   std_logic_vector(0 downto 0);                     -- mem_ck_n
			memory_mem_cke                                           : out   std_logic_vector(0 downto 0);                     -- mem_cke
			memory_mem_cs_n                                          : out   std_logic_vector(0 downto 0);                     -- mem_cs_n
			memory_mem_dm                                            : out   std_logic_vector(0 downto 0);                     -- mem_dm
			memory_mem_ras_n                                         : out   std_logic_vector(0 downto 0);                     -- mem_ras_n
			memory_mem_cas_n                                         : out   std_logic_vector(0 downto 0);                     -- mem_cas_n
			memory_mem_we_n                                          : out   std_logic_vector(0 downto 0);                     -- mem_we_n
			memory_mem_reset_n                                       : out   std_logic;                                        -- mem_reset_n
			memory_mem_dq                                            : inout std_logic_vector(7 downto 0)  := (others => 'X'); -- mem_dq
			memory_mem_dqs                                           : inout std_logic_vector(0 downto 0)  := (others => 'X'); -- mem_dqs
			memory_mem_dqs_n                                         : inout std_logic_vector(0 downto 0)  := (others => 'X'); -- mem_dqs_n
			memory_mem_odt                                           : out   std_logic_vector(0 downto 0);                     -- mem_odt
			oct_rzqin                                                : in    std_logic                     := 'X';             -- rzqin
			mem_if_ddr3_emif_0_pll_ref_clk_clk                       : in    std_logic                     := 'X';             -- clk
			mem_if_ddr3_emif_0_global_reset_reset_n                  : in    std_logic                     := 'X';             -- reset_n
			mem_if_ddr3_emif_0_soft_reset_reset_n                    : in    std_logic                     := 'X';             -- reset_n
			mem_if_ddr3_emif_0_pll_sharing_pll_mem_clk               : out   std_logic;                                        -- pll_mem_clk
			mem_if_ddr3_emif_0_pll_sharing_pll_write_clk             : out   std_logic;                                        -- pll_write_clk
			mem_if_ddr3_emif_0_pll_sharing_pll_locked                : out   std_logic;                                        -- pll_locked
			mem_if_ddr3_emif_0_pll_sharing_pll_write_clk_pre_phy_clk : out   std_logic;                                        -- pll_write_clk_pre_phy_clk
			mem_if_ddr3_emif_0_pll_sharing_pll_addr_cmd_clk          : out   std_logic;                                        -- pll_addr_cmd_clk
			mem_if_ddr3_emif_0_pll_sharing_pll_avl_clk               : out   std_logic;                                        -- pll_avl_clk
			mem_if_ddr3_emif_0_pll_sharing_pll_config_clk            : out   std_logic;                                        -- pll_config_clk
			mem_if_ddr3_emif_0_pll_sharing_pll_mem_phy_clk           : out   std_logic;                                        -- pll_mem_phy_clk
			mem_if_ddr3_emif_0_pll_sharing_afi_phy_clk               : out   std_logic;                                        -- afi_phy_clk
			mem_if_ddr3_emif_0_pll_sharing_pll_avl_phy_clk           : out   std_logic;                                        -- pll_avl_phy_clk
			mem_if_ddr3_emif_0_status_local_init_done                : out   std_logic;                                        -- local_init_done
			mem_if_ddr3_emif_0_status_local_cal_success              : out   std_logic;                                        -- local_cal_success
			mem_if_ddr3_emif_0_status_local_cal_fail                 : out   std_logic;                                        -- local_cal_fail
			mem_if_ddr3_emif_0_avl_waitrequest_n                     : out   std_logic;                                        -- waitrequest_n
			mem_if_ddr3_emif_0_avl_beginbursttransfer                : in    std_logic                     := 'X';             -- beginbursttransfer
			mem_if_ddr3_emif_0_avl_address                           : in    std_logic_vector(20 downto 0) := (others => 'X'); -- address
			mem_if_ddr3_emif_0_avl_readdatavalid                     : out   std_logic;                                        -- readdatavalid
			mem_if_ddr3_emif_0_avl_readdata                          : out   std_logic_vector(31 downto 0);                    -- readdata
			mem_if_ddr3_emif_0_avl_writedata                         : in    std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			mem_if_ddr3_emif_0_avl_byteenable                        : in    std_logic_vector(3 downto 0)  := (others => 'X'); -- byteenable
			mem_if_ddr3_emif_0_avl_read                              : in    std_logic                     := 'X';             -- read
			mem_if_ddr3_emif_0_avl_write                             : in    std_logic                     := 'X';             -- write
			mem_if_ddr3_emif_0_avl_burstcount                        : in    std_logic_vector(2 downto 0)  := (others => 'X'); -- burstcount
			mem_if_ddr3_emif_0_afi_reset_export_reset_n              : out   std_logic;                                        -- reset_n
			mem_if_ddr3_emif_0_afi_reset_reset_n                     : out   std_logic;                                        -- reset_n
			mem_if_ddr3_emif_0_afi_half_clk_clk                      : out   std_logic;                                        -- clk
			mem_if_ddr3_emif_0_afi_clk_clk                           : out   std_logic;                                        -- clk
			clk_0_clk_reset_reset_n                                  : out   std_logic;                                        -- reset_n
			clk_0_clk_clk                                            : out   std_logic                                         -- clk
		);
	end component ddr3controllerqsys;

	u0 : component ddr3controllerqsys
		port map (
			clk_clk                                                  => CONNECTED_TO_clk_clk,                                                  --                                 clk.clk
			reset_reset_n                                            => CONNECTED_TO_reset_reset_n,                                            --                               reset.reset_n
			memory_mem_a                                             => CONNECTED_TO_memory_mem_a,                                             --                              memory.mem_a
			memory_mem_ba                                            => CONNECTED_TO_memory_mem_ba,                                            --                                    .mem_ba
			memory_mem_ck                                            => CONNECTED_TO_memory_mem_ck,                                            --                                    .mem_ck
			memory_mem_ck_n                                          => CONNECTED_TO_memory_mem_ck_n,                                          --                                    .mem_ck_n
			memory_mem_cke                                           => CONNECTED_TO_memory_mem_cke,                                           --                                    .mem_cke
			memory_mem_cs_n                                          => CONNECTED_TO_memory_mem_cs_n,                                          --                                    .mem_cs_n
			memory_mem_dm                                            => CONNECTED_TO_memory_mem_dm,                                            --                                    .mem_dm
			memory_mem_ras_n                                         => CONNECTED_TO_memory_mem_ras_n,                                         --                                    .mem_ras_n
			memory_mem_cas_n                                         => CONNECTED_TO_memory_mem_cas_n,                                         --                                    .mem_cas_n
			memory_mem_we_n                                          => CONNECTED_TO_memory_mem_we_n,                                          --                                    .mem_we_n
			memory_mem_reset_n                                       => CONNECTED_TO_memory_mem_reset_n,                                       --                                    .mem_reset_n
			memory_mem_dq                                            => CONNECTED_TO_memory_mem_dq,                                            --                                    .mem_dq
			memory_mem_dqs                                           => CONNECTED_TO_memory_mem_dqs,                                           --                                    .mem_dqs
			memory_mem_dqs_n                                         => CONNECTED_TO_memory_mem_dqs_n,                                         --                                    .mem_dqs_n
			memory_mem_odt                                           => CONNECTED_TO_memory_mem_odt,                                           --                                    .mem_odt
			oct_rzqin                                                => CONNECTED_TO_oct_rzqin,                                                --                                 oct.rzqin
			mem_if_ddr3_emif_0_pll_ref_clk_clk                       => CONNECTED_TO_mem_if_ddr3_emif_0_pll_ref_clk_clk,                       --      mem_if_ddr3_emif_0_pll_ref_clk.clk
			mem_if_ddr3_emif_0_global_reset_reset_n                  => CONNECTED_TO_mem_if_ddr3_emif_0_global_reset_reset_n,                  --     mem_if_ddr3_emif_0_global_reset.reset_n
			mem_if_ddr3_emif_0_soft_reset_reset_n                    => CONNECTED_TO_mem_if_ddr3_emif_0_soft_reset_reset_n,                    --       mem_if_ddr3_emif_0_soft_reset.reset_n
			mem_if_ddr3_emif_0_pll_sharing_pll_mem_clk               => CONNECTED_TO_mem_if_ddr3_emif_0_pll_sharing_pll_mem_clk,               --      mem_if_ddr3_emif_0_pll_sharing.pll_mem_clk
			mem_if_ddr3_emif_0_pll_sharing_pll_write_clk             => CONNECTED_TO_mem_if_ddr3_emif_0_pll_sharing_pll_write_clk,             --                                    .pll_write_clk
			mem_if_ddr3_emif_0_pll_sharing_pll_locked                => CONNECTED_TO_mem_if_ddr3_emif_0_pll_sharing_pll_locked,                --                                    .pll_locked
			mem_if_ddr3_emif_0_pll_sharing_pll_write_clk_pre_phy_clk => CONNECTED_TO_mem_if_ddr3_emif_0_pll_sharing_pll_write_clk_pre_phy_clk, --                                    .pll_write_clk_pre_phy_clk
			mem_if_ddr3_emif_0_pll_sharing_pll_addr_cmd_clk          => CONNECTED_TO_mem_if_ddr3_emif_0_pll_sharing_pll_addr_cmd_clk,          --                                    .pll_addr_cmd_clk
			mem_if_ddr3_emif_0_pll_sharing_pll_avl_clk               => CONNECTED_TO_mem_if_ddr3_emif_0_pll_sharing_pll_avl_clk,               --                                    .pll_avl_clk
			mem_if_ddr3_emif_0_pll_sharing_pll_config_clk            => CONNECTED_TO_mem_if_ddr3_emif_0_pll_sharing_pll_config_clk,            --                                    .pll_config_clk
			mem_if_ddr3_emif_0_pll_sharing_pll_mem_phy_clk           => CONNECTED_TO_mem_if_ddr3_emif_0_pll_sharing_pll_mem_phy_clk,           --                                    .pll_mem_phy_clk
			mem_if_ddr3_emif_0_pll_sharing_afi_phy_clk               => CONNECTED_TO_mem_if_ddr3_emif_0_pll_sharing_afi_phy_clk,               --                                    .afi_phy_clk
			mem_if_ddr3_emif_0_pll_sharing_pll_avl_phy_clk           => CONNECTED_TO_mem_if_ddr3_emif_0_pll_sharing_pll_avl_phy_clk,           --                                    .pll_avl_phy_clk
			mem_if_ddr3_emif_0_status_local_init_done                => CONNECTED_TO_mem_if_ddr3_emif_0_status_local_init_done,                --           mem_if_ddr3_emif_0_status.local_init_done
			mem_if_ddr3_emif_0_status_local_cal_success              => CONNECTED_TO_mem_if_ddr3_emif_0_status_local_cal_success,              --                                    .local_cal_success
			mem_if_ddr3_emif_0_status_local_cal_fail                 => CONNECTED_TO_mem_if_ddr3_emif_0_status_local_cal_fail,                 --                                    .local_cal_fail
			mem_if_ddr3_emif_0_avl_waitrequest_n                     => CONNECTED_TO_mem_if_ddr3_emif_0_avl_waitrequest_n,                     --              mem_if_ddr3_emif_0_avl.waitrequest_n
			mem_if_ddr3_emif_0_avl_beginbursttransfer                => CONNECTED_TO_mem_if_ddr3_emif_0_avl_beginbursttransfer,                --                                    .beginbursttransfer
			mem_if_ddr3_emif_0_avl_address                           => CONNECTED_TO_mem_if_ddr3_emif_0_avl_address,                           --                                    .address
			mem_if_ddr3_emif_0_avl_readdatavalid                     => CONNECTED_TO_mem_if_ddr3_emif_0_avl_readdatavalid,                     --                                    .readdatavalid
			mem_if_ddr3_emif_0_avl_readdata                          => CONNECTED_TO_mem_if_ddr3_emif_0_avl_readdata,                          --                                    .readdata
			mem_if_ddr3_emif_0_avl_writedata                         => CONNECTED_TO_mem_if_ddr3_emif_0_avl_writedata,                         --                                    .writedata
			mem_if_ddr3_emif_0_avl_byteenable                        => CONNECTED_TO_mem_if_ddr3_emif_0_avl_byteenable,                        --                                    .byteenable
			mem_if_ddr3_emif_0_avl_read                              => CONNECTED_TO_mem_if_ddr3_emif_0_avl_read,                              --                                    .read
			mem_if_ddr3_emif_0_avl_write                             => CONNECTED_TO_mem_if_ddr3_emif_0_avl_write,                             --                                    .write
			mem_if_ddr3_emif_0_avl_burstcount                        => CONNECTED_TO_mem_if_ddr3_emif_0_avl_burstcount,                        --                                    .burstcount
			mem_if_ddr3_emif_0_afi_reset_export_reset_n              => CONNECTED_TO_mem_if_ddr3_emif_0_afi_reset_export_reset_n,              -- mem_if_ddr3_emif_0_afi_reset_export.reset_n
			mem_if_ddr3_emif_0_afi_reset_reset_n                     => CONNECTED_TO_mem_if_ddr3_emif_0_afi_reset_reset_n,                     --        mem_if_ddr3_emif_0_afi_reset.reset_n
			mem_if_ddr3_emif_0_afi_half_clk_clk                      => CONNECTED_TO_mem_if_ddr3_emif_0_afi_half_clk_clk,                      --     mem_if_ddr3_emif_0_afi_half_clk.clk
			mem_if_ddr3_emif_0_afi_clk_clk                           => CONNECTED_TO_mem_if_ddr3_emif_0_afi_clk_clk,                           --          mem_if_ddr3_emif_0_afi_clk.clk
			clk_0_clk_reset_reset_n                                  => CONNECTED_TO_clk_0_clk_reset_reset_n,                                  --                     clk_0_clk_reset.reset_n
			clk_0_clk_clk                                            => CONNECTED_TO_clk_0_clk_clk                                             --                           clk_0_clk.clk
		);

