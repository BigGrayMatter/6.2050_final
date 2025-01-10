// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Dec  4 15:22:44 2024
// Host        : JacksLaptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim c:/6.205_labs/FPGA_1/ip/fifo/ip/fifo/fifo_sim_netlist.v
// Design      : fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo,fifo_generator_v13_2_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_10,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module fifo
   (wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [36:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [36:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [36:0]din;
  wire [36:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire wr_clk;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [5:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [5:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [5:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "6" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "37" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "37" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "0" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "61" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "60" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "6" *) 
  (* C_RD_DEPTH = "64" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "6" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "6" *) 
  (* C_WR_DEPTH = "64" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "6" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  fifo_generator_v13_2_10 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[5:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[5:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[5:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "6" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifoxpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [5:0]src_in_bin;
  input dest_clk;
  output [5:0]dest_out_bin;

  wire [5:0]async_path;
  wire [4:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [5:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [5:0]\dest_graysync_ff[1] ;
  wire [5:0]dest_out_bin;
  wire [4:0]gray_enc;
  wire src_clk;
  wire [5:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .I5(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [4]),
        .I4(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[5]),
        .Q(async_path[5]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "6" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifoxpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [5:0]src_in_bin;
  input dest_clk;
  output [5:0]dest_out_bin;

  wire [5:0]async_path;
  wire [4:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [5:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [5:0]\dest_graysync_ff[1] ;
  wire [5:0]dest_out_bin;
  wire [4:0]gray_enc;
  wire src_clk;
  wire [5:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .I5(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [4]),
        .I4(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[5]),
        .Q(async_path[5]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VRufLWT3xuzTvQKo8VrgeA7TQuqzWEYy/B1VZF2gTA62OnYpyvfz/jYVlv8uQmDxe/ByRttr4gwP
tNck8lOlu04WorDYZXBY99Iv+CD1MRsK+y6klNIUbRWjkWmJ0jF7xfzo5v6+6GlaIHD1nYWB0BGS
XKOLLgkxdDTc9QzwJD4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
uL+N2Y0N0Nss4UIbL4YgwYw1dJAEJxw9VgIJekBqgLF5Hu0OvgBycKBL3tx4bMFtXLoBUh2ZjpPa
Go57AlryR20NeXp3+hoQeboPP11E649UsEN94qUxaPWE5/ujAWzWT8PMJfk3CAspcIaP3XsDNcxF
vPCbKLRNyWvSzyiofwOXgxNNgLi38SzcrWZtPo/eMELIxeVE3bkV2B7I60W9KI1gXiOj3SjPTDnx
EMAbJCwmbwCkTXljtuzvIRTsGb9QIurgASMwg4IWmb9DS6EbeVgoWu9ePD+YKuN3LcW87KSgmC3y
Mirx3ScsFGRfcOAUOLlOQxU4qqE1ZAjtBAua1w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
ngggZ4AaOolK7F7zeqf8LCxDCGfbvArfgDzbRvoxE+aIi2H2/ZgHbrcaf1Km1cW+38j2kTOpZ5BU
JUI2G5HZNfsoiLXjFbOMvQQqByNzlhCZjrS3N725Cznvy/nQpUy+kW4iA6DQZKnpdC2s18Suxi5p
XtgDcUzCh62ABICOpz8=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FzAmLTVxyHRqX0WAddlPopAH/5r3ExgkeVujmhMcJXHbjZ+OKAHOMXTsnwDh03EpZ2Dn+0UPeR9J
JML3A+MQGMuUUzy/4d/lj5rriSnTu0eRK0uK6Gl8vjL08vO3UKb6wGj/w9CP45OWOkbMNgZzJkAl
ulPX0OUqymWYOn3WVAtIlaQ0dmpONV8p6Ixe9p5wlEtvy+7JjUPwaVnKlLjKSAaYD07OqMK+IOEP
5oYs2BscpZ3YKlKVJkoU493L7szHHn2LhSUrMld33nLuWIO6WPdo2u2pTnWXl/J1BzNaK1VaLx4R
H7VhIvgYcSlzCrtbQuNHKFtDPGhXjeA41TS29g==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Oad6Ezs+KRRjlYrAkExu4Kft2T1qNa0HGt8W7O1ByK1ecBs0TGWt/sS3pnt6d6jWuqvsWhrmcGsU
TD7Z+IY65xRZ4IJfgngZD8v540FOGMuFUS31UWxcC7CI6qOo20Q0Irtoxrqm01u5p3tI87ApsE8S
lc2lQ5dh54cGYlRfmo5mYTw6WSHyyVYmoh9npUliD4eNVIKUqnBo1kmYzicnKe8ewFKTEWpjdMeZ
/4YxF/NRZzHTA3GIsnjcgOHia68T/NJJ+zQmoNwxerZWWoacU1EU0IHxET3y4fS/u0Af8OJhkGQf
jI0jGobNLRYYufemCxL6333z0oAno0RiPZlavA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LVIUY1x0cEHel3aUfppGw9v6zvpZmh/zrCgsFGWLi8t0vWUC/ikETYOpuFw/0f9L2t8c6tQj/BSQ
wjvzq42gFgtW+CFBjgHAVUBDHhzlv/GKUM/2Vq36bMg9H5f44nJH+7mDDGVPf2PyYZRkAosFPUpA
wRqTC/g2mQ0mMY/gZGQRrs+/VY69Ze9sjoEiEXuwkb/+/VjXgHCxiCzG4cKf0ZiQ+rePhqJqB7FK
IJ+6LHriZD474qtFLq3fOZ9mrqOgN7iBQlc66dO9E0RmZZZsWtQQzZ4q1c2pzvsjDdJyWe0mTlwa
QGVmYElSvL9in5WwDxoKM+2J7vco8OIexLgbJg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Qf9CPkJTDS6nRjzJ66HoyvpTqtDB4QY3Hy9peOp3xA39ggAvytqhHhiPv35dCRWSCdAyO1u2m+O7
/knms947I+MYTpHHfukyZsBbLho0jRq3cSXe9e6VE+4Dt40wryd91cmi93qmeUxg+vf0F91ug50P
gJ4oGYP71ANEq1UaGqGHgVK0ZsY6jTyc0x25eh+fnXg6vElSbqcptvyGMOBVT/g+gDKIheN40WzZ
Tday7b7o8j+UecVazn9OG8lGmgEQH+ilZfelpEFOBKoEc7YS6kKJ1yiX5nxRMJalTuojq5mhxebk
EsmPJe45gdIAuAmBpw3iLddcx52Arew1xpNY9w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
H+d/6javaSRU2swARkzTIL8p3itaD4ohPxaTAeOjHpt7R9NIiNpHJvUFWkpZ02WVRAGHIw8Kujz3
6qQbQgKv8nhuS0lDhOHSDBVglvTONFSPjBj6pNY2XB24O4tlMghNicwCBXjxGXS6xET2pHNCj46f
01l0BHXfAtSn5SMPu3KYxDnod+2/TDKoWzzX29rrvh4wvf+eKFGbEVa3/RP2yg+Mp05W5p0KZ1Z3
JvOIxc57qFLARbLg1ToAzgZ8iZXLB5tX2Ez+rVDzW4i9ZvMW40QGIP5F6KCmuWunjVyqcasQ+9V7
oxcmw4sBdn0TYckrmrDvGtKxr+at316tB9uFJzLHWIwjnROKDoFwhcBbXzoqNoU/oBWqorM8JnDS
d/8tvN+7zx+k1OgCrpu5jgCA2E9LIMqL+HO19rub4MD4RjgOufHPDbN2wv6I9bj3Tko+kBZSFxxR
1SnGvhgPAaZJxQLEM+WE8SnVMzJI0RKNctcFv/jmWTYmAdTGIiTDAcmW

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WXM4aFffz6byfeUnRWfxJR3Sbg31hpZIfhJu9O4aqVdZMRQzhrArOJ75qYkGOgZjI+35a4DA9Ohc
RMh3Tm8A5kh9XM67B45s3+7vF8pYIM5pFlzEQBSQ/OeeAi6GNLI2ACXQl1WutRpQKuwX9iboEsRb
Kc1SU6AOV6yaliF6tUt1LL4x+bC8mqlEHTk6SvN7aiA23tVDcik1QSH66CO3/+J5f88G53DHDqtY
T6w2k7pUziwTnLfirI+XpPgqYp9YYRQEv52Q7wTYJlYnVYrMyludNuTaIE27AkgPAneEkdJlrq9l
eVOgs6ZIO1DEusKG7VzkbM1sS0GnU5Zhuj1Eww==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KJ2iLB3UgRnxezAEg3KJ/gREzXcLo8pOtacMRsDMsFCSD3vYAdGUKSARO8g71pIGFzJo6PBwogFR
MkJED/0TqwZaleoFaN2ULuSnzZGmf8vT0qKvutBGquDn8MH7T3k3wLxcNdZQLnkqisJCMj8u+71g
xMQRAkhtAQvA2cWb6TDQN6jmfByZuu/AH3X+YZ43XIDG/jymNkwyBWNNx0yzbZouJtOuzzYHhYoC
AAuKR+zfynO91P9hcrXFiExHtCmvb73DA4ICLGiOzEj+C1PMPBX9AHdhnWYy5BbQGsd727Y50yNo
xmTU1vBKL2ewwN4j/Ib2AK/Z7T+d/NunpRbCnA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eYDP9MWXRUmO05etuHvoqbEMRNQHmR5nos71kLkRxpycXrdpHxalQmyEdCdbeVoM8lN9qwxKuN0l
yQn00dSYRi3P02ygaVsHqVAsRtz2yRpIRjyGMYD7zKpnNQw476DBmK+/sCD7EH6NxSfzUNnfoURL
uIFC0sHEYpwX6Qt2bT2GdCC0OFvaGwQNimyTFdfeey7cdpg9JmsQRgLEUfRwG1Dk0iu258zTUnT+
31O5RA9OwlgZJpC+LpCvL8XAmGZJ4CCeUf2hnpppoV4KphAV4mCBUkNtUYZSJdF0a5cdHFxnxR5n
nI0ed4USMMiNvLqvP0HQgecfCvYzYx9kk0bmtA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 92528)
`pragma protect data_block
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
k2T4qvYOx6SrpI4EPpEe5Do=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
