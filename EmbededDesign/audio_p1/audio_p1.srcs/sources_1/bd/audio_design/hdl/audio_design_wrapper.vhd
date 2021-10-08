--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Thu Feb 25 16:28:59 2021
--Host        : DESKTOP-P7INVOJ running 64-bit major release  (build 9200)
--Command     : generate_target audio_design_wrapper.bd
--Design      : audio_design_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity audio_design_wrapper is
  port (
    AC_BCLK : out STD_LOGIC_VECTOR ( 0 to 0 );
    AC_MCLK : out STD_LOGIC;
    AC_MUTE_N : out STD_LOGIC;
    AC_PBLRC : out STD_LOGIC_VECTOR ( 0 to 0 );
    AC_RECLRC : out STD_LOGIC_VECTOR ( 0 to 0 );
    AC_SDATA_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    AC_SDATA_O : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    ac_scl_io : inout STD_LOGIC;
    ac_sda_io : inout STD_LOGIC;
    btns_4bits_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    leds_4bits_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sws_4bits_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end audio_design_wrapper;

architecture STRUCTURE of audio_design_wrapper is
  component audio_design is
  port (
    AC_SDATA_O : out STD_LOGIC_VECTOR ( 0 to 0 );
    AC_PBLRC : out STD_LOGIC_VECTOR ( 0 to 0 );
    AC_BCLK : out STD_LOGIC_VECTOR ( 0 to 0 );
    AC_SDATA_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    AC_MCLK : out STD_LOGIC;
    AC_MUTE_N : out STD_LOGIC;
    leds_4bits_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ac_sda_i : in STD_LOGIC;
    ac_sda_o : out STD_LOGIC;
    ac_sda_t : out STD_LOGIC;
    ac_scl_i : in STD_LOGIC;
    ac_scl_o : out STD_LOGIC;
    ac_scl_t : out STD_LOGIC;
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    btns_4bits_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sws_4bits_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AC_RECLRC : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component audio_design;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal ac_scl_i : STD_LOGIC;
  signal ac_scl_o : STD_LOGIC;
  signal ac_scl_t : STD_LOGIC;
  signal ac_sda_i : STD_LOGIC;
  signal ac_sda_o : STD_LOGIC;
  signal ac_sda_t : STD_LOGIC;
begin
ac_scl_iobuf: component IOBUF
     port map (
      I => ac_scl_o,
      IO => ac_scl_io,
      O => ac_scl_i,
      T => ac_scl_t
    );
ac_sda_iobuf: component IOBUF
     port map (
      I => ac_sda_o,
      IO => ac_sda_io,
      O => ac_sda_i,
      T => ac_sda_t
    );
audio_design_i: component audio_design
     port map (
      AC_BCLK(0) => AC_BCLK(0),
      AC_MCLK => AC_MCLK,
      AC_MUTE_N => AC_MUTE_N,
      AC_PBLRC(0) => AC_PBLRC(0),
      AC_RECLRC(0) => AC_RECLRC(0),
      AC_SDATA_I(0) => AC_SDATA_I(0),
      AC_SDATA_O(0) => AC_SDATA_O(0),
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      ac_scl_i => ac_scl_i,
      ac_scl_o => ac_scl_o,
      ac_scl_t => ac_scl_t,
      ac_sda_i => ac_sda_i,
      ac_sda_o => ac_sda_o,
      ac_sda_t => ac_sda_t,
      btns_4bits_tri_i(3 downto 0) => btns_4bits_tri_i(3 downto 0),
      leds_4bits_tri_o(3 downto 0) => leds_4bits_tri_o(3 downto 0),
      sws_4bits_tri_i(3 downto 0) => sws_4bits_tri_i(3 downto 0)
    );
end STRUCTURE;
