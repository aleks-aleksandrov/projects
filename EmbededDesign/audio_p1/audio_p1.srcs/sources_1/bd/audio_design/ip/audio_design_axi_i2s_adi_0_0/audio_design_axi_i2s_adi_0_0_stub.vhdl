-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Feb 25 12:16:22 2021
-- Host        : DESKTOP-P7INVOJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/xlinx-projects/audio_p1/audio_p1.srcs/sources_1/bd/audio_design/ip/audio_design_axi_i2s_adi_0_0/audio_design_axi_i2s_adi_0_0_stub.vhdl
-- Design      : audio_design_axi_i2s_adi_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity audio_design_axi_i2s_adi_0_0 is
  Port ( 
    DATA_CLK_I : in STD_LOGIC;
    BCLK_O : out STD_LOGIC_VECTOR ( 0 to 0 );
    LRCLK_O : out STD_LOGIC_VECTOR ( 0 to 0 );
    SDATA_O : out STD_LOGIC_VECTOR ( 0 to 0 );
    SDATA_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    MUTEN_O : out STD_LOGIC;
    DMA_REQ_TX_ACLK : in STD_LOGIC;
    DMA_REQ_TX_RSTN : in STD_LOGIC;
    DMA_REQ_TX_DAVALID : in STD_LOGIC;
    DMA_REQ_TX_DATYPE : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DMA_REQ_TX_DAREADY : out STD_LOGIC;
    DMA_REQ_TX_DRVALID : out STD_LOGIC;
    DMA_REQ_TX_DRTYPE : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DMA_REQ_TX_DRLAST : out STD_LOGIC;
    DMA_REQ_TX_DRREADY : in STD_LOGIC;
    DMA_REQ_RX_ACLK : in STD_LOGIC;
    DMA_REQ_RX_RSTN : in STD_LOGIC;
    DMA_REQ_RX_DAVALID : in STD_LOGIC;
    DMA_REQ_RX_DATYPE : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DMA_REQ_RX_DAREADY : out STD_LOGIC;
    DMA_REQ_RX_DRVALID : out STD_LOGIC;
    DMA_REQ_RX_DRTYPE : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DMA_REQ_RX_DRLAST : out STD_LOGIC;
    DMA_REQ_RX_DRREADY : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_WREADY : inout STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : inout STD_LOGIC;
    S_AXI_AWREADY : inout STD_LOGIC
  );

end audio_design_axi_i2s_adi_0_0;

architecture stub of audio_design_axi_i2s_adi_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "DATA_CLK_I,BCLK_O[0:0],LRCLK_O[0:0],SDATA_O[0:0],SDATA_I[0:0],MUTEN_O,DMA_REQ_TX_ACLK,DMA_REQ_TX_RSTN,DMA_REQ_TX_DAVALID,DMA_REQ_TX_DATYPE[1:0],DMA_REQ_TX_DAREADY,DMA_REQ_TX_DRVALID,DMA_REQ_TX_DRTYPE[1:0],DMA_REQ_TX_DRLAST,DMA_REQ_TX_DRREADY,DMA_REQ_RX_ACLK,DMA_REQ_RX_RSTN,DMA_REQ_RX_DAVALID,DMA_REQ_RX_DATYPE[1:0],DMA_REQ_RX_DAREADY,DMA_REQ_RX_DRVALID,DMA_REQ_RX_DRTYPE[1:0],DMA_REQ_RX_DRLAST,DMA_REQ_RX_DRREADY,S_AXI_ACLK,S_AXI_ARESETN,S_AXI_AWADDR[31:0],S_AXI_AWVALID,S_AXI_WDATA[31:0],S_AXI_WSTRB[3:0],S_AXI_WVALID,S_AXI_BREADY,S_AXI_ARADDR[31:0],S_AXI_ARVALID,S_AXI_RREADY,S_AXI_ARREADY,S_AXI_RDATA[31:0],S_AXI_RRESP[1:0],S_AXI_RVALID,S_AXI_WREADY,S_AXI_BRESP[1:0],S_AXI_BVALID,S_AXI_AWREADY";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "axi_i2s_adi,Vivado 2018.3";
begin
end;
