-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Feb 16 14:06:38 2021
-- Host        : DESKTOP-P7INVOJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/xlinx-projects/knight_rider_ip_tb/knight_rider_ip_tb.srcs/sources_1/bd/kn_rd_tb/ip/kn_rd_tb_kn_rd_0_0/kn_rd_tb_kn_rd_0_0_sim_netlist.vhdl
-- Design      : kn_rd_tb_kn_rd_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity kn_rd_tb_kn_rd_0_0_user_logic is
  port (
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of kn_rd_tb_kn_rd_0_0_user_logic : entity is "user_logic";
end kn_rd_tb_kn_rd_0_0_user_logic;

architecture STRUCTURE of kn_rd_tb_kn_rd_0_0_user_logic is
  signal \FSM_onehot_n_s[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_n_s[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_n_s[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_n_s[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_n_s_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_n_s_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_n_s_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_n_s_reg_n_0_[3]\ : STD_LOGIC;
  signal ck1 : STD_LOGIC;
  signal ck2_i_1_n_0 : STD_LOGIC;
  signal ck2_reg_n_0 : STD_LOGIC;
  signal ck3_i_1_n_0 : STD_LOGIC;
  signal ck3_reg_n_0 : STD_LOGIC;
  signal count : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \count[0]__0_i_1_n_0\ : STD_LOGIC;
  signal \count[10]__0_i_1_n_0\ : STD_LOGIC;
  signal \count[11]__0_i_1_n_0\ : STD_LOGIC;
  signal \count[12]__0_i_1_n_0\ : STD_LOGIC;
  signal \count[13]__0_i_1_n_0\ : STD_LOGIC;
  signal \count[14]__0_i_1_n_0\ : STD_LOGIC;
  signal \count[15]__0_i_1_n_0\ : STD_LOGIC;
  signal \count[16]__0_i_1_n_0\ : STD_LOGIC;
  signal \count[17]__0_i_1_n_0\ : STD_LOGIC;
  signal \count[18]__0_i_1_n_0\ : STD_LOGIC;
  signal \count[19]__0_i_1_n_0\ : STD_LOGIC;
  signal \count[1]__0_i_1_n_0\ : STD_LOGIC;
  signal \count[20]__0_i_1_n_0\ : STD_LOGIC;
  signal \count[21]__0_i_1_n_0\ : STD_LOGIC;
  signal \count[22]__0_i_1_n_0\ : STD_LOGIC;
  signal \count[23]__0_i_1_n_0\ : STD_LOGIC;
  signal \count[24]__0_i_1_n_0\ : STD_LOGIC;
  signal \count[25]__0_i_1_n_0\ : STD_LOGIC;
  signal \count[26]__0_i_1_n_0\ : STD_LOGIC;
  signal \count[27]__0_i_1_n_0\ : STD_LOGIC;
  signal \count[28]__0_i_1_n_0\ : STD_LOGIC;
  signal \count[29]__0_i_1_n_0\ : STD_LOGIC;
  signal \count[2]__0_i_1_n_0\ : STD_LOGIC;
  signal \count[30]__0_i_1_n_0\ : STD_LOGIC;
  signal \count[31]__0_i_10_n_0\ : STD_LOGIC;
  signal \count[31]__0_i_1_n_0\ : STD_LOGIC;
  signal \count[31]__0_i_2_n_0\ : STD_LOGIC;
  signal \count[31]__0_i_3_n_0\ : STD_LOGIC;
  signal \count[31]__0_i_4_n_0\ : STD_LOGIC;
  signal \count[31]__0_i_5_n_0\ : STD_LOGIC;
  signal \count[31]__0_i_7_n_0\ : STD_LOGIC;
  signal \count[31]__0_i_8_n_0\ : STD_LOGIC;
  signal \count[31]__0_i_9_n_0\ : STD_LOGIC;
  signal \count[31]_i_10_n_0\ : STD_LOGIC;
  signal \count[31]_i_2_n_0\ : STD_LOGIC;
  signal \count[31]_i_3_n_0\ : STD_LOGIC;
  signal \count[31]_i_4_n_0\ : STD_LOGIC;
  signal \count[31]_i_5_n_0\ : STD_LOGIC;
  signal \count[31]_i_7_n_0\ : STD_LOGIC;
  signal \count[31]_i_8_n_0\ : STD_LOGIC;
  signal \count[31]_i_9_n_0\ : STD_LOGIC;
  signal \count[3]__0_i_1_n_0\ : STD_LOGIC;
  signal \count[4]__0_i_1_n_0\ : STD_LOGIC;
  signal \count[5]__0_i_1_n_0\ : STD_LOGIC;
  signal \count[6]__0_i_1_n_0\ : STD_LOGIC;
  signal \count[7]__0_i_1_n_0\ : STD_LOGIC;
  signal \count[8]__0_i_1_n_0\ : STD_LOGIC;
  signal \count[9]__0_i_1_n_0\ : STD_LOGIC;
  signal count_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \count_reg[0]__0_n_0\ : STD_LOGIC;
  signal \count_reg[10]__0_n_0\ : STD_LOGIC;
  signal \count_reg[11]__0_n_0\ : STD_LOGIC;
  signal \count_reg[12]__0_i_2_n_0\ : STD_LOGIC;
  signal \count_reg[12]__0_i_2_n_1\ : STD_LOGIC;
  signal \count_reg[12]__0_i_2_n_2\ : STD_LOGIC;
  signal \count_reg[12]__0_i_2_n_3\ : STD_LOGIC;
  signal \count_reg[12]__0_i_2_n_4\ : STD_LOGIC;
  signal \count_reg[12]__0_i_2_n_5\ : STD_LOGIC;
  signal \count_reg[12]__0_i_2_n_6\ : STD_LOGIC;
  signal \count_reg[12]__0_i_2_n_7\ : STD_LOGIC;
  signal \count_reg[12]__0_n_0\ : STD_LOGIC;
  signal \count_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \count_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \count_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \count_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \count_reg[13]__0_n_0\ : STD_LOGIC;
  signal \count_reg[14]__0_n_0\ : STD_LOGIC;
  signal \count_reg[15]__0_n_0\ : STD_LOGIC;
  signal \count_reg[16]__0_i_2_n_0\ : STD_LOGIC;
  signal \count_reg[16]__0_i_2_n_1\ : STD_LOGIC;
  signal \count_reg[16]__0_i_2_n_2\ : STD_LOGIC;
  signal \count_reg[16]__0_i_2_n_3\ : STD_LOGIC;
  signal \count_reg[16]__0_i_2_n_4\ : STD_LOGIC;
  signal \count_reg[16]__0_i_2_n_5\ : STD_LOGIC;
  signal \count_reg[16]__0_i_2_n_6\ : STD_LOGIC;
  signal \count_reg[16]__0_i_2_n_7\ : STD_LOGIC;
  signal \count_reg[16]__0_n_0\ : STD_LOGIC;
  signal \count_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \count_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \count_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \count_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \count_reg[17]__0_n_0\ : STD_LOGIC;
  signal \count_reg[18]__0_n_0\ : STD_LOGIC;
  signal \count_reg[19]__0_n_0\ : STD_LOGIC;
  signal \count_reg[1]__0_n_0\ : STD_LOGIC;
  signal \count_reg[20]__0_i_2_n_0\ : STD_LOGIC;
  signal \count_reg[20]__0_i_2_n_1\ : STD_LOGIC;
  signal \count_reg[20]__0_i_2_n_2\ : STD_LOGIC;
  signal \count_reg[20]__0_i_2_n_3\ : STD_LOGIC;
  signal \count_reg[20]__0_i_2_n_4\ : STD_LOGIC;
  signal \count_reg[20]__0_i_2_n_5\ : STD_LOGIC;
  signal \count_reg[20]__0_i_2_n_6\ : STD_LOGIC;
  signal \count_reg[20]__0_i_2_n_7\ : STD_LOGIC;
  signal \count_reg[20]__0_n_0\ : STD_LOGIC;
  signal \count_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \count_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \count_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \count_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \count_reg[21]__0_n_0\ : STD_LOGIC;
  signal \count_reg[22]__0_n_0\ : STD_LOGIC;
  signal \count_reg[23]__0_n_0\ : STD_LOGIC;
  signal \count_reg[24]__0_i_2_n_0\ : STD_LOGIC;
  signal \count_reg[24]__0_i_2_n_1\ : STD_LOGIC;
  signal \count_reg[24]__0_i_2_n_2\ : STD_LOGIC;
  signal \count_reg[24]__0_i_2_n_3\ : STD_LOGIC;
  signal \count_reg[24]__0_i_2_n_4\ : STD_LOGIC;
  signal \count_reg[24]__0_i_2_n_5\ : STD_LOGIC;
  signal \count_reg[24]__0_i_2_n_6\ : STD_LOGIC;
  signal \count_reg[24]__0_i_2_n_7\ : STD_LOGIC;
  signal \count_reg[24]__0_n_0\ : STD_LOGIC;
  signal \count_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \count_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \count_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \count_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \count_reg[25]__0_n_0\ : STD_LOGIC;
  signal \count_reg[26]__0_n_0\ : STD_LOGIC;
  signal \count_reg[27]__0_n_0\ : STD_LOGIC;
  signal \count_reg[28]__0_i_2_n_0\ : STD_LOGIC;
  signal \count_reg[28]__0_i_2_n_1\ : STD_LOGIC;
  signal \count_reg[28]__0_i_2_n_2\ : STD_LOGIC;
  signal \count_reg[28]__0_i_2_n_3\ : STD_LOGIC;
  signal \count_reg[28]__0_i_2_n_4\ : STD_LOGIC;
  signal \count_reg[28]__0_i_2_n_5\ : STD_LOGIC;
  signal \count_reg[28]__0_i_2_n_6\ : STD_LOGIC;
  signal \count_reg[28]__0_i_2_n_7\ : STD_LOGIC;
  signal \count_reg[28]__0_n_0\ : STD_LOGIC;
  signal \count_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \count_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \count_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \count_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \count_reg[29]__0_n_0\ : STD_LOGIC;
  signal \count_reg[2]__0_n_0\ : STD_LOGIC;
  signal \count_reg[30]__0_n_0\ : STD_LOGIC;
  signal \count_reg[31]__0_i_6_n_2\ : STD_LOGIC;
  signal \count_reg[31]__0_i_6_n_3\ : STD_LOGIC;
  signal \count_reg[31]__0_i_6_n_5\ : STD_LOGIC;
  signal \count_reg[31]__0_i_6_n_6\ : STD_LOGIC;
  signal \count_reg[31]__0_i_6_n_7\ : STD_LOGIC;
  signal \count_reg[31]__0_n_0\ : STD_LOGIC;
  signal \count_reg[31]_i_6_n_2\ : STD_LOGIC;
  signal \count_reg[31]_i_6_n_3\ : STD_LOGIC;
  signal \count_reg[3]__0_n_0\ : STD_LOGIC;
  signal \count_reg[4]__0_i_2_n_0\ : STD_LOGIC;
  signal \count_reg[4]__0_i_2_n_1\ : STD_LOGIC;
  signal \count_reg[4]__0_i_2_n_2\ : STD_LOGIC;
  signal \count_reg[4]__0_i_2_n_3\ : STD_LOGIC;
  signal \count_reg[4]__0_i_2_n_4\ : STD_LOGIC;
  signal \count_reg[4]__0_i_2_n_5\ : STD_LOGIC;
  signal \count_reg[4]__0_i_2_n_6\ : STD_LOGIC;
  signal \count_reg[4]__0_i_2_n_7\ : STD_LOGIC;
  signal \count_reg[4]__0_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \count_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \count_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \count_reg[5]__0_n_0\ : STD_LOGIC;
  signal \count_reg[6]__0_n_0\ : STD_LOGIC;
  signal \count_reg[7]__0_n_0\ : STD_LOGIC;
  signal \count_reg[8]__0_i_2_n_0\ : STD_LOGIC;
  signal \count_reg[8]__0_i_2_n_1\ : STD_LOGIC;
  signal \count_reg[8]__0_i_2_n_2\ : STD_LOGIC;
  signal \count_reg[8]__0_i_2_n_3\ : STD_LOGIC;
  signal \count_reg[8]__0_i_2_n_4\ : STD_LOGIC;
  signal \count_reg[8]__0_i_2_n_5\ : STD_LOGIC;
  signal \count_reg[8]__0_i_2_n_6\ : STD_LOGIC;
  signal \count_reg[8]__0_i_2_n_7\ : STD_LOGIC;
  signal \count_reg[8]__0_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \count_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \count_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \count_reg[9]__0_n_0\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \z[3]_i_1_n_0\ : STD_LOGIC;
  signal \NLW_count_reg[31]__0_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_count_reg[31]__0_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_count_reg[31]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_count_reg[31]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_n_s[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_n_s[2]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_n_s_reg[0]\ : label is "s1:1000,s3:0010,s2:0100,s0:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_n_s_reg[1]\ : label is "s1:1000,s3:0010,s2:0100,s0:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_n_s_reg[2]\ : label is "s1:1000,s3:0010,s2:0100,s0:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_n_s_reg[3]\ : label is "s1:1000,s3:0010,s2:0100,s0:0001";
begin
\FSM_onehot_n_s[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_onehot_n_s_reg_n_0_[1]\,
      I1 => s00_axi_wdata(1),
      I2 => \FSM_onehot_n_s_reg_n_0_[3]\,
      O => \FSM_onehot_n_s[0]_i_1_n_0\
    );
\FSM_onehot_n_s[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \FSM_onehot_n_s_reg_n_0_[0]\,
      I1 => s00_axi_wdata(1),
      I2 => \FSM_onehot_n_s_reg_n_0_[2]\,
      O => \FSM_onehot_n_s[1]_i_1_n_0\
    );
\FSM_onehot_n_s[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \FSM_onehot_n_s_reg_n_0_[1]\,
      I1 => s00_axi_wdata(1),
      I2 => \FSM_onehot_n_s_reg_n_0_[3]\,
      O => \FSM_onehot_n_s[2]_i_1_n_0\
    );
\FSM_onehot_n_s[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_onehot_n_s_reg_n_0_[0]\,
      I1 => s00_axi_wdata(1),
      I2 => \FSM_onehot_n_s_reg_n_0_[2]\,
      O => \FSM_onehot_n_s[3]_i_1_n_0\
    );
\FSM_onehot_n_s_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ck1,
      CE => '1',
      D => \FSM_onehot_n_s[0]_i_1_n_0\,
      Q => \FSM_onehot_n_s_reg_n_0_[0]\,
      S => s00_axi_wdata(2)
    );
\FSM_onehot_n_s_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ck1,
      CE => '1',
      D => \FSM_onehot_n_s[1]_i_1_n_0\,
      Q => \FSM_onehot_n_s_reg_n_0_[1]\,
      R => s00_axi_wdata(2)
    );
\FSM_onehot_n_s_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ck1,
      CE => '1',
      D => \FSM_onehot_n_s[2]_i_1_n_0\,
      Q => \FSM_onehot_n_s_reg_n_0_[2]\,
      R => s00_axi_wdata(2)
    );
\FSM_onehot_n_s_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ck1,
      CE => '1',
      D => \FSM_onehot_n_s[3]_i_1_n_0\,
      Q => \FSM_onehot_n_s_reg_n_0_[3]\,
      R => s00_axi_wdata(2)
    );
ck2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => \count[31]_i_2_n_0\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count[31]_i_4_n_0\,
      I3 => \count[31]_i_5_n_0\,
      I4 => ck2_reg_n_0,
      O => ck2_i_1_n_0
    );
ck2_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => ck2_i_1_n_0,
      Q => ck2_reg_n_0,
      R => s00_axi_wdata(2)
    );
ck3_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => \count[31]__0_i_2_n_0\,
      I1 => \count[31]__0_i_3_n_0\,
      I2 => \count[31]__0_i_4_n_0\,
      I3 => \count[31]__0_i_5_n_0\,
      I4 => ck3_reg_n_0,
      O => ck3_i_1_n_0
    );
ck3_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => ck3_i_1_n_0,
      Q => ck3_reg_n_0,
      R => s00_axi_wdata(2)
    );
\count[0]__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg[0]__0_n_0\,
      O => \count[0]__0_i_1_n_0\
    );
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count(0),
      O => count_0(0)
    );
\count[10]__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]__0_i_2_n_0\,
      I1 => \count[31]__0_i_3_n_0\,
      I2 => \count[31]__0_i_4_n_0\,
      I3 => \count[31]__0_i_5_n_0\,
      I4 => \count_reg[12]__0_i_2_n_6\,
      O => \count[10]__0_i_1_n_0\
    );
\count[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]_i_2_n_0\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count[31]_i_4_n_0\,
      I3 => \count[31]_i_5_n_0\,
      I4 => data0(10),
      O => count_0(10)
    );
\count[11]__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]__0_i_2_n_0\,
      I1 => \count[31]__0_i_3_n_0\,
      I2 => \count[31]__0_i_4_n_0\,
      I3 => \count[31]__0_i_5_n_0\,
      I4 => \count_reg[12]__0_i_2_n_5\,
      O => \count[11]__0_i_1_n_0\
    );
\count[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]_i_2_n_0\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count[31]_i_4_n_0\,
      I3 => \count[31]_i_5_n_0\,
      I4 => data0(11),
      O => count_0(11)
    );
\count[12]__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]__0_i_2_n_0\,
      I1 => \count[31]__0_i_3_n_0\,
      I2 => \count[31]__0_i_4_n_0\,
      I3 => \count[31]__0_i_5_n_0\,
      I4 => \count_reg[12]__0_i_2_n_4\,
      O => \count[12]__0_i_1_n_0\
    );
\count[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]_i_2_n_0\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count[31]_i_4_n_0\,
      I3 => \count[31]_i_5_n_0\,
      I4 => data0(12),
      O => count_0(12)
    );
\count[13]__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]__0_i_2_n_0\,
      I1 => \count[31]__0_i_3_n_0\,
      I2 => \count[31]__0_i_4_n_0\,
      I3 => \count[31]__0_i_5_n_0\,
      I4 => \count_reg[16]__0_i_2_n_7\,
      O => \count[13]__0_i_1_n_0\
    );
\count[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]_i_2_n_0\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count[31]_i_4_n_0\,
      I3 => \count[31]_i_5_n_0\,
      I4 => data0(13),
      O => count_0(13)
    );
\count[14]__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]__0_i_2_n_0\,
      I1 => \count[31]__0_i_3_n_0\,
      I2 => \count[31]__0_i_4_n_0\,
      I3 => \count[31]__0_i_5_n_0\,
      I4 => \count_reg[16]__0_i_2_n_6\,
      O => \count[14]__0_i_1_n_0\
    );
\count[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]_i_2_n_0\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count[31]_i_4_n_0\,
      I3 => \count[31]_i_5_n_0\,
      I4 => data0(14),
      O => count_0(14)
    );
\count[15]__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]__0_i_2_n_0\,
      I1 => \count[31]__0_i_3_n_0\,
      I2 => \count[31]__0_i_4_n_0\,
      I3 => \count[31]__0_i_5_n_0\,
      I4 => \count_reg[16]__0_i_2_n_5\,
      O => \count[15]__0_i_1_n_0\
    );
\count[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]_i_2_n_0\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count[31]_i_4_n_0\,
      I3 => \count[31]_i_5_n_0\,
      I4 => data0(15),
      O => count_0(15)
    );
\count[16]__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]__0_i_2_n_0\,
      I1 => \count[31]__0_i_3_n_0\,
      I2 => \count[31]__0_i_4_n_0\,
      I3 => \count[31]__0_i_5_n_0\,
      I4 => \count_reg[16]__0_i_2_n_4\,
      O => \count[16]__0_i_1_n_0\
    );
\count[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]_i_2_n_0\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count[31]_i_4_n_0\,
      I3 => \count[31]_i_5_n_0\,
      I4 => data0(16),
      O => count_0(16)
    );
\count[17]__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]__0_i_2_n_0\,
      I1 => \count[31]__0_i_3_n_0\,
      I2 => \count[31]__0_i_4_n_0\,
      I3 => \count[31]__0_i_5_n_0\,
      I4 => \count_reg[20]__0_i_2_n_7\,
      O => \count[17]__0_i_1_n_0\
    );
\count[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]_i_2_n_0\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count[31]_i_4_n_0\,
      I3 => \count[31]_i_5_n_0\,
      I4 => data0(17),
      O => count_0(17)
    );
\count[18]__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]__0_i_2_n_0\,
      I1 => \count[31]__0_i_3_n_0\,
      I2 => \count[31]__0_i_4_n_0\,
      I3 => \count[31]__0_i_5_n_0\,
      I4 => \count_reg[20]__0_i_2_n_6\,
      O => \count[18]__0_i_1_n_0\
    );
\count[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]_i_2_n_0\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count[31]_i_4_n_0\,
      I3 => \count[31]_i_5_n_0\,
      I4 => data0(18),
      O => count_0(18)
    );
\count[19]__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]__0_i_2_n_0\,
      I1 => \count[31]__0_i_3_n_0\,
      I2 => \count[31]__0_i_4_n_0\,
      I3 => \count[31]__0_i_5_n_0\,
      I4 => \count_reg[20]__0_i_2_n_5\,
      O => \count[19]__0_i_1_n_0\
    );
\count[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]_i_2_n_0\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count[31]_i_4_n_0\,
      I3 => \count[31]_i_5_n_0\,
      I4 => data0(19),
      O => count_0(19)
    );
\count[1]__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]__0_i_2_n_0\,
      I1 => \count[31]__0_i_3_n_0\,
      I2 => \count[31]__0_i_4_n_0\,
      I3 => \count[31]__0_i_5_n_0\,
      I4 => \count_reg[4]__0_i_2_n_7\,
      O => \count[1]__0_i_1_n_0\
    );
\count[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]_i_2_n_0\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count[31]_i_4_n_0\,
      I3 => \count[31]_i_5_n_0\,
      I4 => data0(1),
      O => count_0(1)
    );
\count[20]__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]__0_i_2_n_0\,
      I1 => \count[31]__0_i_3_n_0\,
      I2 => \count[31]__0_i_4_n_0\,
      I3 => \count[31]__0_i_5_n_0\,
      I4 => \count_reg[20]__0_i_2_n_4\,
      O => \count[20]__0_i_1_n_0\
    );
\count[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]_i_2_n_0\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count[31]_i_4_n_0\,
      I3 => \count[31]_i_5_n_0\,
      I4 => data0(20),
      O => count_0(20)
    );
\count[21]__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]__0_i_2_n_0\,
      I1 => \count[31]__0_i_3_n_0\,
      I2 => \count[31]__0_i_4_n_0\,
      I3 => \count[31]__0_i_5_n_0\,
      I4 => \count_reg[24]__0_i_2_n_7\,
      O => \count[21]__0_i_1_n_0\
    );
\count[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]_i_2_n_0\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count[31]_i_4_n_0\,
      I3 => \count[31]_i_5_n_0\,
      I4 => data0(21),
      O => count_0(21)
    );
\count[22]__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]__0_i_2_n_0\,
      I1 => \count[31]__0_i_3_n_0\,
      I2 => \count[31]__0_i_4_n_0\,
      I3 => \count[31]__0_i_5_n_0\,
      I4 => \count_reg[24]__0_i_2_n_6\,
      O => \count[22]__0_i_1_n_0\
    );
\count[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]_i_2_n_0\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count[31]_i_4_n_0\,
      I3 => \count[31]_i_5_n_0\,
      I4 => data0(22),
      O => count_0(22)
    );
\count[23]__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]__0_i_2_n_0\,
      I1 => \count[31]__0_i_3_n_0\,
      I2 => \count[31]__0_i_4_n_0\,
      I3 => \count[31]__0_i_5_n_0\,
      I4 => \count_reg[24]__0_i_2_n_5\,
      O => \count[23]__0_i_1_n_0\
    );
\count[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]_i_2_n_0\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count[31]_i_4_n_0\,
      I3 => \count[31]_i_5_n_0\,
      I4 => data0(23),
      O => count_0(23)
    );
\count[24]__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]__0_i_2_n_0\,
      I1 => \count[31]__0_i_3_n_0\,
      I2 => \count[31]__0_i_4_n_0\,
      I3 => \count[31]__0_i_5_n_0\,
      I4 => \count_reg[24]__0_i_2_n_4\,
      O => \count[24]__0_i_1_n_0\
    );
\count[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]_i_2_n_0\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count[31]_i_4_n_0\,
      I3 => \count[31]_i_5_n_0\,
      I4 => data0(24),
      O => count_0(24)
    );
\count[25]__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]__0_i_2_n_0\,
      I1 => \count[31]__0_i_3_n_0\,
      I2 => \count[31]__0_i_4_n_0\,
      I3 => \count[31]__0_i_5_n_0\,
      I4 => \count_reg[28]__0_i_2_n_7\,
      O => \count[25]__0_i_1_n_0\
    );
\count[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]_i_2_n_0\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count[31]_i_4_n_0\,
      I3 => \count[31]_i_5_n_0\,
      I4 => data0(25),
      O => count_0(25)
    );
\count[26]__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]__0_i_2_n_0\,
      I1 => \count[31]__0_i_3_n_0\,
      I2 => \count[31]__0_i_4_n_0\,
      I3 => \count[31]__0_i_5_n_0\,
      I4 => \count_reg[28]__0_i_2_n_6\,
      O => \count[26]__0_i_1_n_0\
    );
\count[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]_i_2_n_0\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count[31]_i_4_n_0\,
      I3 => \count[31]_i_5_n_0\,
      I4 => data0(26),
      O => count_0(26)
    );
\count[27]__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]__0_i_2_n_0\,
      I1 => \count[31]__0_i_3_n_0\,
      I2 => \count[31]__0_i_4_n_0\,
      I3 => \count[31]__0_i_5_n_0\,
      I4 => \count_reg[28]__0_i_2_n_5\,
      O => \count[27]__0_i_1_n_0\
    );
\count[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]_i_2_n_0\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count[31]_i_4_n_0\,
      I3 => \count[31]_i_5_n_0\,
      I4 => data0(27),
      O => count_0(27)
    );
\count[28]__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]__0_i_2_n_0\,
      I1 => \count[31]__0_i_3_n_0\,
      I2 => \count[31]__0_i_4_n_0\,
      I3 => \count[31]__0_i_5_n_0\,
      I4 => \count_reg[28]__0_i_2_n_4\,
      O => \count[28]__0_i_1_n_0\
    );
\count[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]_i_2_n_0\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count[31]_i_4_n_0\,
      I3 => \count[31]_i_5_n_0\,
      I4 => data0(28),
      O => count_0(28)
    );
\count[29]__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]__0_i_2_n_0\,
      I1 => \count[31]__0_i_3_n_0\,
      I2 => \count[31]__0_i_4_n_0\,
      I3 => \count[31]__0_i_5_n_0\,
      I4 => \count_reg[31]__0_i_6_n_7\,
      O => \count[29]__0_i_1_n_0\
    );
\count[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]_i_2_n_0\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count[31]_i_4_n_0\,
      I3 => \count[31]_i_5_n_0\,
      I4 => data0(29),
      O => count_0(29)
    );
\count[2]__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]__0_i_2_n_0\,
      I1 => \count[31]__0_i_3_n_0\,
      I2 => \count[31]__0_i_4_n_0\,
      I3 => \count[31]__0_i_5_n_0\,
      I4 => \count_reg[4]__0_i_2_n_6\,
      O => \count[2]__0_i_1_n_0\
    );
\count[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]_i_2_n_0\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count[31]_i_4_n_0\,
      I3 => \count[31]_i_5_n_0\,
      I4 => data0(2),
      O => count_0(2)
    );
\count[30]__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]__0_i_2_n_0\,
      I1 => \count[31]__0_i_3_n_0\,
      I2 => \count[31]__0_i_4_n_0\,
      I3 => \count[31]__0_i_5_n_0\,
      I4 => \count_reg[31]__0_i_6_n_6\,
      O => \count[30]__0_i_1_n_0\
    );
\count[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]_i_2_n_0\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count[31]_i_4_n_0\,
      I3 => \count[31]_i_5_n_0\,
      I4 => data0(30),
      O => count_0(30)
    );
\count[31]__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]__0_i_2_n_0\,
      I1 => \count[31]__0_i_3_n_0\,
      I2 => \count[31]__0_i_4_n_0\,
      I3 => \count[31]__0_i_5_n_0\,
      I4 => \count_reg[31]__0_i_6_n_5\,
      O => \count[31]__0_i_1_n_0\
    );
\count[31]__0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \count_reg[13]__0_n_0\,
      I1 => \count_reg[12]__0_n_0\,
      I2 => \count_reg[15]__0_n_0\,
      I3 => \count_reg[14]__0_n_0\,
      O => \count[31]__0_i_10_n_0\
    );
\count[31]__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF7FF"
    )
        port map (
      I0 => \count_reg[18]__0_n_0\,
      I1 => \count_reg[19]__0_n_0\,
      I2 => \count_reg[17]__0_n_0\,
      I3 => \count_reg[16]__0_n_0\,
      I4 => \count[31]__0_i_7_n_0\,
      O => \count[31]__0_i_2_n_0\
    );
\count[31]__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \count_reg[26]__0_n_0\,
      I1 => \count_reg[27]__0_n_0\,
      I2 => \count_reg[24]__0_n_0\,
      I3 => \count_reg[25]__0_n_0\,
      I4 => \count[31]__0_i_8_n_0\,
      O => \count[31]__0_i_3_n_0\
    );
\count[31]__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => \count_reg[2]__0_n_0\,
      I1 => \count_reg[3]__0_n_0\,
      I2 => \count_reg[0]__0_n_0\,
      I3 => \count_reg[1]__0_n_0\,
      I4 => \count[31]__0_i_9_n_0\,
      O => \count[31]__0_i_4_n_0\
    );
\count[31]__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
        port map (
      I0 => \count_reg[11]__0_n_0\,
      I1 => \count_reg[10]__0_n_0\,
      I2 => \count_reg[8]__0_n_0\,
      I3 => \count_reg[9]__0_n_0\,
      I4 => \count[31]__0_i_10_n_0\,
      O => \count[31]__0_i_5_n_0\
    );
\count[31]__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \count_reg[21]__0_n_0\,
      I1 => \count_reg[20]__0_n_0\,
      I2 => \count_reg[23]__0_n_0\,
      I3 => \count_reg[22]__0_n_0\,
      O => \count[31]__0_i_7_n_0\
    );
\count[31]__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \count_reg[29]__0_n_0\,
      I1 => \count_reg[28]__0_n_0\,
      I2 => \count_reg[31]__0_n_0\,
      I3 => \count_reg[30]__0_n_0\,
      O => \count[31]__0_i_8_n_0\
    );
\count[31]__0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => \count_reg[5]__0_n_0\,
      I1 => \count_reg[4]__0_n_0\,
      I2 => \count_reg[7]__0_n_0\,
      I3 => \count_reg[6]__0_n_0\,
      O => \count[31]__0_i_9_n_0\
    );
\count[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]_i_2_n_0\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count[31]_i_4_n_0\,
      I3 => \count[31]_i_5_n_0\,
      I4 => data0(31),
      O => count_0(31)
    );
\count[31]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => count(12),
      I1 => count(13),
      I2 => count(15),
      I3 => count(14),
      O => \count[31]_i_10_n_0\
    );
\count[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => count(18),
      I1 => count(19),
      I2 => count(16),
      I3 => count(17),
      I4 => \count[31]_i_7_n_0\,
      O => \count[31]_i_2_n_0\
    );
\count[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => count(26),
      I1 => count(27),
      I2 => count(24),
      I3 => count(25),
      I4 => \count[31]_i_8_n_0\,
      O => \count[31]_i_3_n_0\
    );
\count[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => count(2),
      I1 => count(3),
      I2 => count(0),
      I3 => count(1),
      I4 => \count[31]_i_9_n_0\,
      O => \count[31]_i_4_n_0\
    );
\count[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
        port map (
      I0 => count(11),
      I1 => count(10),
      I2 => count(8),
      I3 => count(9),
      I4 => \count[31]_i_10_n_0\,
      O => \count[31]_i_5_n_0\
    );
\count[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => count(20),
      I1 => count(21),
      I2 => count(23),
      I3 => count(22),
      O => \count[31]_i_7_n_0\
    );
\count[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count(29),
      I1 => count(28),
      I2 => count(31),
      I3 => count(30),
      O => \count[31]_i_8_n_0\
    );
\count[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => count(5),
      I1 => count(4),
      I2 => count(6),
      I3 => count(7),
      O => \count[31]_i_9_n_0\
    );
\count[3]__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]__0_i_2_n_0\,
      I1 => \count[31]__0_i_3_n_0\,
      I2 => \count[31]__0_i_4_n_0\,
      I3 => \count[31]__0_i_5_n_0\,
      I4 => \count_reg[4]__0_i_2_n_5\,
      O => \count[3]__0_i_1_n_0\
    );
\count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]_i_2_n_0\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count[31]_i_4_n_0\,
      I3 => \count[31]_i_5_n_0\,
      I4 => data0(3),
      O => count_0(3)
    );
\count[4]__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]__0_i_2_n_0\,
      I1 => \count[31]__0_i_3_n_0\,
      I2 => \count[31]__0_i_4_n_0\,
      I3 => \count[31]__0_i_5_n_0\,
      I4 => \count_reg[4]__0_i_2_n_4\,
      O => \count[4]__0_i_1_n_0\
    );
\count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]_i_2_n_0\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count[31]_i_4_n_0\,
      I3 => \count[31]_i_5_n_0\,
      I4 => data0(4),
      O => count_0(4)
    );
\count[5]__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]__0_i_2_n_0\,
      I1 => \count[31]__0_i_3_n_0\,
      I2 => \count[31]__0_i_4_n_0\,
      I3 => \count[31]__0_i_5_n_0\,
      I4 => \count_reg[8]__0_i_2_n_7\,
      O => \count[5]__0_i_1_n_0\
    );
\count[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]_i_2_n_0\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count[31]_i_4_n_0\,
      I3 => \count[31]_i_5_n_0\,
      I4 => data0(5),
      O => count_0(5)
    );
\count[6]__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]__0_i_2_n_0\,
      I1 => \count[31]__0_i_3_n_0\,
      I2 => \count[31]__0_i_4_n_0\,
      I3 => \count[31]__0_i_5_n_0\,
      I4 => \count_reg[8]__0_i_2_n_6\,
      O => \count[6]__0_i_1_n_0\
    );
\count[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]_i_2_n_0\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count[31]_i_4_n_0\,
      I3 => \count[31]_i_5_n_0\,
      I4 => data0(6),
      O => count_0(6)
    );
\count[7]__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]__0_i_2_n_0\,
      I1 => \count[31]__0_i_3_n_0\,
      I2 => \count[31]__0_i_4_n_0\,
      I3 => \count[31]__0_i_5_n_0\,
      I4 => \count_reg[8]__0_i_2_n_5\,
      O => \count[7]__0_i_1_n_0\
    );
\count[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]_i_2_n_0\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count[31]_i_4_n_0\,
      I3 => \count[31]_i_5_n_0\,
      I4 => data0(7),
      O => count_0(7)
    );
\count[8]__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]__0_i_2_n_0\,
      I1 => \count[31]__0_i_3_n_0\,
      I2 => \count[31]__0_i_4_n_0\,
      I3 => \count[31]__0_i_5_n_0\,
      I4 => \count_reg[8]__0_i_2_n_4\,
      O => \count[8]__0_i_1_n_0\
    );
\count[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]_i_2_n_0\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count[31]_i_4_n_0\,
      I3 => \count[31]_i_5_n_0\,
      I4 => data0(8),
      O => count_0(8)
    );
\count[9]__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]__0_i_2_n_0\,
      I1 => \count[31]__0_i_3_n_0\,
      I2 => \count[31]__0_i_4_n_0\,
      I3 => \count[31]__0_i_5_n_0\,
      I4 => \count_reg[12]__0_i_2_n_7\,
      O => \count[9]__0_i_1_n_0\
    );
\count[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \count[31]_i_2_n_0\,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count[31]_i_4_n_0\,
      I3 => \count[31]_i_5_n_0\,
      I4 => data0(9),
      O => count_0(9)
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_0(0),
      Q => count(0),
      R => s00_axi_wdata(2)
    );
\count_reg[0]__0\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \count[0]__0_i_1_n_0\,
      Q => \count_reg[0]__0_n_0\,
      R => s00_axi_wdata(2)
    );
\count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_0(10),
      Q => count(10),
      R => s00_axi_wdata(2)
    );
\count_reg[10]__0\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \count[10]__0_i_1_n_0\,
      Q => \count_reg[10]__0_n_0\,
      R => s00_axi_wdata(2)
    );
\count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_0(11),
      Q => count(11),
      R => s00_axi_wdata(2)
    );
\count_reg[11]__0\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \count[11]__0_i_1_n_0\,
      Q => \count_reg[11]__0_n_0\,
      R => s00_axi_wdata(2)
    );
\count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_0(12),
      Q => count(12),
      R => s00_axi_wdata(2)
    );
\count_reg[12]__0\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \count[12]__0_i_1_n_0\,
      Q => \count_reg[12]__0_n_0\,
      R => s00_axi_wdata(2)
    );
\count_reg[12]__0_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]__0_i_2_n_0\,
      CO(3) => \count_reg[12]__0_i_2_n_0\,
      CO(2) => \count_reg[12]__0_i_2_n_1\,
      CO(1) => \count_reg[12]__0_i_2_n_2\,
      CO(0) => \count_reg[12]__0_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[12]__0_i_2_n_4\,
      O(2) => \count_reg[12]__0_i_2_n_5\,
      O(1) => \count_reg[12]__0_i_2_n_6\,
      O(0) => \count_reg[12]__0_i_2_n_7\,
      S(3) => \count_reg[12]__0_n_0\,
      S(2) => \count_reg[11]__0_n_0\,
      S(1) => \count_reg[10]__0_n_0\,
      S(0) => \count_reg[9]__0_n_0\
    );
\count_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]_i_2_n_0\,
      CO(3) => \count_reg[12]_i_2_n_0\,
      CO(2) => \count_reg[12]_i_2_n_1\,
      CO(1) => \count_reg[12]_i_2_n_2\,
      CO(0) => \count_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => count(12 downto 9)
    );
\count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_0(13),
      Q => count(13),
      R => s00_axi_wdata(2)
    );
\count_reg[13]__0\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \count[13]__0_i_1_n_0\,
      Q => \count_reg[13]__0_n_0\,
      R => s00_axi_wdata(2)
    );
\count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_0(14),
      Q => count(14),
      R => s00_axi_wdata(2)
    );
\count_reg[14]__0\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \count[14]__0_i_1_n_0\,
      Q => \count_reg[14]__0_n_0\,
      R => s00_axi_wdata(2)
    );
\count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_0(15),
      Q => count(15),
      R => s00_axi_wdata(2)
    );
\count_reg[15]__0\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \count[15]__0_i_1_n_0\,
      Q => \count_reg[15]__0_n_0\,
      R => s00_axi_wdata(2)
    );
\count_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_0(16),
      Q => count(16),
      R => s00_axi_wdata(2)
    );
\count_reg[16]__0\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \count[16]__0_i_1_n_0\,
      Q => \count_reg[16]__0_n_0\,
      R => s00_axi_wdata(2)
    );
\count_reg[16]__0_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[12]__0_i_2_n_0\,
      CO(3) => \count_reg[16]__0_i_2_n_0\,
      CO(2) => \count_reg[16]__0_i_2_n_1\,
      CO(1) => \count_reg[16]__0_i_2_n_2\,
      CO(0) => \count_reg[16]__0_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[16]__0_i_2_n_4\,
      O(2) => \count_reg[16]__0_i_2_n_5\,
      O(1) => \count_reg[16]__0_i_2_n_6\,
      O(0) => \count_reg[16]__0_i_2_n_7\,
      S(3) => \count_reg[16]__0_n_0\,
      S(2) => \count_reg[15]__0_n_0\,
      S(1) => \count_reg[14]__0_n_0\,
      S(0) => \count_reg[13]__0_n_0\
    );
\count_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[12]_i_2_n_0\,
      CO(3) => \count_reg[16]_i_2_n_0\,
      CO(2) => \count_reg[16]_i_2_n_1\,
      CO(1) => \count_reg[16]_i_2_n_2\,
      CO(0) => \count_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => count(16 downto 13)
    );
\count_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_0(17),
      Q => count(17),
      R => s00_axi_wdata(2)
    );
\count_reg[17]__0\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \count[17]__0_i_1_n_0\,
      Q => \count_reg[17]__0_n_0\,
      R => s00_axi_wdata(2)
    );
\count_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_0(18),
      Q => count(18),
      R => s00_axi_wdata(2)
    );
\count_reg[18]__0\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \count[18]__0_i_1_n_0\,
      Q => \count_reg[18]__0_n_0\,
      R => s00_axi_wdata(2)
    );
\count_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_0(19),
      Q => count(19),
      R => s00_axi_wdata(2)
    );
\count_reg[19]__0\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \count[19]__0_i_1_n_0\,
      Q => \count_reg[19]__0_n_0\,
      R => s00_axi_wdata(2)
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_0(1),
      Q => count(1),
      R => s00_axi_wdata(2)
    );
\count_reg[1]__0\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \count[1]__0_i_1_n_0\,
      Q => \count_reg[1]__0_n_0\,
      R => s00_axi_wdata(2)
    );
\count_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_0(20),
      Q => count(20),
      R => s00_axi_wdata(2)
    );
\count_reg[20]__0\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \count[20]__0_i_1_n_0\,
      Q => \count_reg[20]__0_n_0\,
      R => s00_axi_wdata(2)
    );
\count_reg[20]__0_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[16]__0_i_2_n_0\,
      CO(3) => \count_reg[20]__0_i_2_n_0\,
      CO(2) => \count_reg[20]__0_i_2_n_1\,
      CO(1) => \count_reg[20]__0_i_2_n_2\,
      CO(0) => \count_reg[20]__0_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[20]__0_i_2_n_4\,
      O(2) => \count_reg[20]__0_i_2_n_5\,
      O(1) => \count_reg[20]__0_i_2_n_6\,
      O(0) => \count_reg[20]__0_i_2_n_7\,
      S(3) => \count_reg[20]__0_n_0\,
      S(2) => \count_reg[19]__0_n_0\,
      S(1) => \count_reg[18]__0_n_0\,
      S(0) => \count_reg[17]__0_n_0\
    );
\count_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[16]_i_2_n_0\,
      CO(3) => \count_reg[20]_i_2_n_0\,
      CO(2) => \count_reg[20]_i_2_n_1\,
      CO(1) => \count_reg[20]_i_2_n_2\,
      CO(0) => \count_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3 downto 0) => count(20 downto 17)
    );
\count_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_0(21),
      Q => count(21),
      R => s00_axi_wdata(2)
    );
\count_reg[21]__0\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \count[21]__0_i_1_n_0\,
      Q => \count_reg[21]__0_n_0\,
      R => s00_axi_wdata(2)
    );
\count_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_0(22),
      Q => count(22),
      R => s00_axi_wdata(2)
    );
\count_reg[22]__0\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \count[22]__0_i_1_n_0\,
      Q => \count_reg[22]__0_n_0\,
      R => s00_axi_wdata(2)
    );
\count_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_0(23),
      Q => count(23),
      R => s00_axi_wdata(2)
    );
\count_reg[23]__0\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \count[23]__0_i_1_n_0\,
      Q => \count_reg[23]__0_n_0\,
      R => s00_axi_wdata(2)
    );
\count_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_0(24),
      Q => count(24),
      R => s00_axi_wdata(2)
    );
\count_reg[24]__0\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \count[24]__0_i_1_n_0\,
      Q => \count_reg[24]__0_n_0\,
      R => s00_axi_wdata(2)
    );
\count_reg[24]__0_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[20]__0_i_2_n_0\,
      CO(3) => \count_reg[24]__0_i_2_n_0\,
      CO(2) => \count_reg[24]__0_i_2_n_1\,
      CO(1) => \count_reg[24]__0_i_2_n_2\,
      CO(0) => \count_reg[24]__0_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[24]__0_i_2_n_4\,
      O(2) => \count_reg[24]__0_i_2_n_5\,
      O(1) => \count_reg[24]__0_i_2_n_6\,
      O(0) => \count_reg[24]__0_i_2_n_7\,
      S(3) => \count_reg[24]__0_n_0\,
      S(2) => \count_reg[23]__0_n_0\,
      S(1) => \count_reg[22]__0_n_0\,
      S(0) => \count_reg[21]__0_n_0\
    );
\count_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[20]_i_2_n_0\,
      CO(3) => \count_reg[24]_i_2_n_0\,
      CO(2) => \count_reg[24]_i_2_n_1\,
      CO(1) => \count_reg[24]_i_2_n_2\,
      CO(0) => \count_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3 downto 0) => count(24 downto 21)
    );
\count_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_0(25),
      Q => count(25),
      R => s00_axi_wdata(2)
    );
\count_reg[25]__0\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \count[25]__0_i_1_n_0\,
      Q => \count_reg[25]__0_n_0\,
      R => s00_axi_wdata(2)
    );
\count_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_0(26),
      Q => count(26),
      R => s00_axi_wdata(2)
    );
\count_reg[26]__0\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \count[26]__0_i_1_n_0\,
      Q => \count_reg[26]__0_n_0\,
      R => s00_axi_wdata(2)
    );
\count_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_0(27),
      Q => count(27),
      R => s00_axi_wdata(2)
    );
\count_reg[27]__0\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \count[27]__0_i_1_n_0\,
      Q => \count_reg[27]__0_n_0\,
      R => s00_axi_wdata(2)
    );
\count_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_0(28),
      Q => count(28),
      R => s00_axi_wdata(2)
    );
\count_reg[28]__0\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \count[28]__0_i_1_n_0\,
      Q => \count_reg[28]__0_n_0\,
      R => s00_axi_wdata(2)
    );
\count_reg[28]__0_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[24]__0_i_2_n_0\,
      CO(3) => \count_reg[28]__0_i_2_n_0\,
      CO(2) => \count_reg[28]__0_i_2_n_1\,
      CO(1) => \count_reg[28]__0_i_2_n_2\,
      CO(0) => \count_reg[28]__0_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[28]__0_i_2_n_4\,
      O(2) => \count_reg[28]__0_i_2_n_5\,
      O(1) => \count_reg[28]__0_i_2_n_6\,
      O(0) => \count_reg[28]__0_i_2_n_7\,
      S(3) => \count_reg[28]__0_n_0\,
      S(2) => \count_reg[27]__0_n_0\,
      S(1) => \count_reg[26]__0_n_0\,
      S(0) => \count_reg[25]__0_n_0\
    );
\count_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[24]_i_2_n_0\,
      CO(3) => \count_reg[28]_i_2_n_0\,
      CO(2) => \count_reg[28]_i_2_n_1\,
      CO(1) => \count_reg[28]_i_2_n_2\,
      CO(0) => \count_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(28 downto 25),
      S(3 downto 0) => count(28 downto 25)
    );
\count_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_0(29),
      Q => count(29),
      R => s00_axi_wdata(2)
    );
\count_reg[29]__0\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \count[29]__0_i_1_n_0\,
      Q => \count_reg[29]__0_n_0\,
      R => s00_axi_wdata(2)
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_0(2),
      Q => count(2),
      R => s00_axi_wdata(2)
    );
\count_reg[2]__0\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \count[2]__0_i_1_n_0\,
      Q => \count_reg[2]__0_n_0\,
      R => s00_axi_wdata(2)
    );
\count_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_0(30),
      Q => count(30),
      R => s00_axi_wdata(2)
    );
\count_reg[30]__0\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \count[30]__0_i_1_n_0\,
      Q => \count_reg[30]__0_n_0\,
      R => s00_axi_wdata(2)
    );
\count_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_0(31),
      Q => count(31),
      R => s00_axi_wdata(2)
    );
\count_reg[31]__0\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \count[31]__0_i_1_n_0\,
      Q => \count_reg[31]__0_n_0\,
      R => s00_axi_wdata(2)
    );
\count_reg[31]__0_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[28]__0_i_2_n_0\,
      CO(3 downto 2) => \NLW_count_reg[31]__0_i_6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \count_reg[31]__0_i_6_n_2\,
      CO(0) => \count_reg[31]__0_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_count_reg[31]__0_i_6_O_UNCONNECTED\(3),
      O(2) => \count_reg[31]__0_i_6_n_5\,
      O(1) => \count_reg[31]__0_i_6_n_6\,
      O(0) => \count_reg[31]__0_i_6_n_7\,
      S(3) => '0',
      S(2) => \count_reg[31]__0_n_0\,
      S(1) => \count_reg[30]__0_n_0\,
      S(0) => \count_reg[29]__0_n_0\
    );
\count_reg[31]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[28]_i_2_n_0\,
      CO(3 downto 2) => \NLW_count_reg[31]_i_6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \count_reg[31]_i_6_n_2\,
      CO(0) => \count_reg[31]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_count_reg[31]_i_6_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => count(31 downto 29)
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_0(3),
      Q => count(3),
      R => s00_axi_wdata(2)
    );
\count_reg[3]__0\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \count[3]__0_i_1_n_0\,
      Q => \count_reg[3]__0_n_0\,
      R => s00_axi_wdata(2)
    );
\count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_0(4),
      Q => count(4),
      R => s00_axi_wdata(2)
    );
\count_reg[4]__0\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \count[4]__0_i_1_n_0\,
      Q => \count_reg[4]__0_n_0\,
      R => s00_axi_wdata(2)
    );
\count_reg[4]__0_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[4]__0_i_2_n_0\,
      CO(2) => \count_reg[4]__0_i_2_n_1\,
      CO(1) => \count_reg[4]__0_i_2_n_2\,
      CO(0) => \count_reg[4]__0_i_2_n_3\,
      CYINIT => \count_reg[0]__0_n_0\,
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[4]__0_i_2_n_4\,
      O(2) => \count_reg[4]__0_i_2_n_5\,
      O(1) => \count_reg[4]__0_i_2_n_6\,
      O(0) => \count_reg[4]__0_i_2_n_7\,
      S(3) => \count_reg[4]__0_n_0\,
      S(2) => \count_reg[3]__0_n_0\,
      S(1) => \count_reg[2]__0_n_0\,
      S(0) => \count_reg[1]__0_n_0\
    );
\count_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[4]_i_2_n_0\,
      CO(2) => \count_reg[4]_i_2_n_1\,
      CO(1) => \count_reg[4]_i_2_n_2\,
      CO(0) => \count_reg[4]_i_2_n_3\,
      CYINIT => count(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => count(4 downto 1)
    );
\count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_0(5),
      Q => count(5),
      R => s00_axi_wdata(2)
    );
\count_reg[5]__0\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \count[5]__0_i_1_n_0\,
      Q => \count_reg[5]__0_n_0\,
      R => s00_axi_wdata(2)
    );
\count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_0(6),
      Q => count(6),
      R => s00_axi_wdata(2)
    );
\count_reg[6]__0\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \count[6]__0_i_1_n_0\,
      Q => \count_reg[6]__0_n_0\,
      R => s00_axi_wdata(2)
    );
\count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_0(7),
      Q => count(7),
      R => s00_axi_wdata(2)
    );
\count_reg[7]__0\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \count[7]__0_i_1_n_0\,
      Q => \count_reg[7]__0_n_0\,
      R => s00_axi_wdata(2)
    );
\count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_0(8),
      Q => count(8),
      R => s00_axi_wdata(2)
    );
\count_reg[8]__0\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \count[8]__0_i_1_n_0\,
      Q => \count_reg[8]__0_n_0\,
      R => s00_axi_wdata(2)
    );
\count_reg[8]__0_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]__0_i_2_n_0\,
      CO(3) => \count_reg[8]__0_i_2_n_0\,
      CO(2) => \count_reg[8]__0_i_2_n_1\,
      CO(1) => \count_reg[8]__0_i_2_n_2\,
      CO(0) => \count_reg[8]__0_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[8]__0_i_2_n_4\,
      O(2) => \count_reg[8]__0_i_2_n_5\,
      O(1) => \count_reg[8]__0_i_2_n_6\,
      O(0) => \count_reg[8]__0_i_2_n_7\,
      S(3) => \count_reg[8]__0_n_0\,
      S(2) => \count_reg[7]__0_n_0\,
      S(1) => \count_reg[6]__0_n_0\,
      S(0) => \count_reg[5]__0_n_0\
    );
\count_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_2_n_0\,
      CO(3) => \count_reg[8]_i_2_n_0\,
      CO(2) => \count_reg[8]_i_2_n_1\,
      CO(1) => \count_reg[8]_i_2_n_2\,
      CO(0) => \count_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => count(8 downto 5)
    );
\count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_0(9),
      Q => count(9),
      R => s00_axi_wdata(2)
    );
\count_reg[9]__0\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \count[9]__0_i_1_n_0\,
      Q => \count_reg[9]__0_n_0\,
      R => s00_axi_wdata(2)
    );
\z[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_wdata(2),
      O => \z[3]_i_1_n_0\
    );
\z[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ck3_reg_n_0,
      I1 => s00_axi_wdata(0),
      I2 => ck2_reg_n_0,
      O => ck1
    );
\z_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ck1,
      CE => \z[3]_i_1_n_0\,
      D => \FSM_onehot_n_s_reg_n_0_[0]\,
      Q => led(0),
      R => '0'
    );
\z_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ck1,
      CE => \z[3]_i_1_n_0\,
      D => \FSM_onehot_n_s_reg_n_0_[3]\,
      Q => led(1),
      R => '0'
    );
\z_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ck1,
      CE => \z[3]_i_1_n_0\,
      D => \FSM_onehot_n_s_reg_n_0_[2]\,
      Q => led(2),
      R => '0'
    );
\z_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ck1,
      CE => \z[3]_i_1_n_0\,
      D => \FSM_onehot_n_s_reg_n_0_[1]\,
      Q => led(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity kn_rd_tb_kn_rd_0_0_kn_rd_v1_0_S00_AXI is
  port (
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of kn_rd_tb_kn_rd_0_0_kn_rd_v1_0_S00_AXI : entity is "kn_rd_v1_0_S00_AXI";
end kn_rd_tb_kn_rd_0_0_kn_rd_v1_0_S00_AXI;

architecture STRUCTURE of kn_rd_tb_kn_rd_0_0_kn_rd_v1_0_S00_AXI is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \^led\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal slv_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[3]\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg_rden : STD_LOGIC;
  signal \slv_reg_wren__2\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair1";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  led(3 downto 0) <= \^led\(3 downto 0);
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
U: entity work.kn_rd_tb_kn_rd_0_0_user_logic
     port map (
      led(3 downto 0) => \^led\(3 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_wdata(2 downto 0) => s00_axi_wdata(2 downto 0)
    );
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFBF00BF00BF00"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => axi_awready_i_1_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      S => axi_awready_i_1_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      S => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => aw_en_reg_n_0,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      I4 => \^s_axi_awready\,
      I5 => p_0_in(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => aw_en_reg_n_0,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      I4 => \^s_axi_awready\,
      I5 => p_0_in(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => p_0_in(0),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in(1),
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^s_axi_awready\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^s_axi_awready\,
      I2 => \^s_axi_wready\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(0),
      I1 => slv_reg0(0),
      I2 => slv_reg3(0),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[0]\,
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AC00AC"
    )
        port map (
      I0 => slv_reg1(10),
      I1 => slv_reg0(10),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg3(10),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AC00AC"
    )
        port map (
      I0 => slv_reg1(11),
      I1 => slv_reg0(11),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg3(11),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AC00AC"
    )
        port map (
      I0 => slv_reg1(12),
      I1 => slv_reg0(12),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg3(12),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AC00AC"
    )
        port map (
      I0 => slv_reg1(13),
      I1 => slv_reg0(13),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg3(13),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AC00AC"
    )
        port map (
      I0 => slv_reg1(14),
      I1 => slv_reg0(14),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg3(14),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AC00AC"
    )
        port map (
      I0 => slv_reg1(15),
      I1 => slv_reg0(15),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg3(15),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AC00AC"
    )
        port map (
      I0 => slv_reg1(16),
      I1 => slv_reg0(16),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg3(16),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AC00AC"
    )
        port map (
      I0 => slv_reg1(17),
      I1 => slv_reg0(17),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg3(17),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AC00AC"
    )
        port map (
      I0 => slv_reg1(18),
      I1 => slv_reg0(18),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg3(18),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AC00AC"
    )
        port map (
      I0 => slv_reg1(19),
      I1 => slv_reg0(19),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg3(19),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(1),
      I1 => slv_reg0(1),
      I2 => slv_reg3(1),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[1]\,
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AC00AC"
    )
        port map (
      I0 => slv_reg1(20),
      I1 => slv_reg0(20),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg3(20),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AC00AC"
    )
        port map (
      I0 => slv_reg1(21),
      I1 => slv_reg0(21),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg3(21),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AC00AC"
    )
        port map (
      I0 => slv_reg1(22),
      I1 => slv_reg0(22),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg3(22),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AC00AC"
    )
        port map (
      I0 => slv_reg1(23),
      I1 => slv_reg0(23),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg3(23),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AC00AC"
    )
        port map (
      I0 => slv_reg1(24),
      I1 => slv_reg0(24),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg3(24),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AC00AC"
    )
        port map (
      I0 => slv_reg1(25),
      I1 => slv_reg0(25),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg3(25),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AC00AC"
    )
        port map (
      I0 => slv_reg1(26),
      I1 => slv_reg0(26),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg3(26),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AC00AC"
    )
        port map (
      I0 => slv_reg1(27),
      I1 => slv_reg0(27),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg3(27),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AC00AC"
    )
        port map (
      I0 => slv_reg1(28),
      I1 => slv_reg0(28),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg3(28),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AC00AC"
    )
        port map (
      I0 => slv_reg1(29),
      I1 => slv_reg0(29),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg3(29),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(2),
      I1 => slv_reg0(2),
      I2 => slv_reg3(2),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[2]\,
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AC00AC"
    )
        port map (
      I0 => slv_reg1(30),
      I1 => slv_reg0(30),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg3(30),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      O => slv_reg_rden
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AC00AC"
    )
        port map (
      I0 => slv_reg1(31),
      I1 => slv_reg0(31),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg3(31),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(3),
      I1 => slv_reg0(3),
      I2 => slv_reg3(3),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[3]\,
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AC00AC"
    )
        port map (
      I0 => slv_reg1(4),
      I1 => slv_reg0(4),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg3(4),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AC00AC"
    )
        port map (
      I0 => slv_reg1(5),
      I1 => slv_reg0(5),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg3(5),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AC00AC"
    )
        port map (
      I0 => slv_reg1(6),
      I1 => slv_reg0(6),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg3(6),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AC00AC"
    )
        port map (
      I0 => slv_reg1(7),
      I1 => slv_reg0(7),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg3(7),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AC00AC"
    )
        port map (
      I0 => slv_reg1(8),
      I1 => slv_reg0(8),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg3(8),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AC00AC"
    )
        port map (
      I0 => slv_reg1(9),
      I1 => slv_reg0(9),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg3(9),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^s_axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(1),
      O => \slv_reg0[15]_i_1_n_0\
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(2),
      O => \slv_reg0[23]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(3),
      O => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(0),
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg0(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg0(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg0(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg0(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg0(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg0(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg0(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg0(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg0(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg0(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg0(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg0(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg0(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg0(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg0(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg0(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg0(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg0(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg0(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg0(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg0(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg0(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg0(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg0(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg0(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg0(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg0(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg0(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg0(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg0(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg0(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg0(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(1),
      I3 => p_0_in(0),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(2),
      I3 => p_0_in(0),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(3),
      I3 => p_0_in(0),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(0),
      I3 => p_0_in(0),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg1(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg1(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg1(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg1(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg1(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg1(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg1(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg1(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg1(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg1(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg1(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg1(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg1(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg1(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg1(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg1(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg1(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg1(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg1(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg1(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg1(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg1(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg1(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg1(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg1(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg1(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg1(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg1(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg1(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg1(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg1(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg1(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^led\(0),
      Q => \slv_reg2_reg_n_0_[0]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^led\(1),
      Q => \slv_reg2_reg_n_0_[1]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^led\(2),
      Q => \slv_reg2_reg_n_0_[2]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^led\(3),
      Q => \slv_reg2_reg_n_0_[3]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(1),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => p_1_in(15)
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(2),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => p_1_in(23)
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => p_1_in(31)
    );
\slv_reg3[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^s_axi_awready\,
      I2 => \^s_axi_wready\,
      I3 => s00_axi_wvalid,
      O => \slv_reg_wren__2\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(0),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => p_1_in(7)
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(0),
      Q => slv_reg3(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(10),
      Q => slv_reg3(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(11),
      Q => slv_reg3(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(12),
      Q => slv_reg3(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(13),
      Q => slv_reg3(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(14),
      Q => slv_reg3(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(15),
      Q => slv_reg3(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(16),
      Q => slv_reg3(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(17),
      Q => slv_reg3(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(18),
      Q => slv_reg3(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(19),
      Q => slv_reg3(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(1),
      Q => slv_reg3(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(20),
      Q => slv_reg3(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(21),
      Q => slv_reg3(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(22),
      Q => slv_reg3(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(23),
      Q => slv_reg3(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(26),
      Q => slv_reg3(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(27),
      Q => slv_reg3(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(28),
      Q => slv_reg3(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(29),
      Q => slv_reg3(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(2),
      Q => slv_reg3(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(3),
      Q => slv_reg3(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(4),
      Q => slv_reg3(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(5),
      Q => slv_reg3(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(6),
      Q => slv_reg3(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(7),
      Q => slv_reg3(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(8),
      Q => slv_reg3(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(9),
      Q => slv_reg3(9),
      R => axi_awready_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity kn_rd_tb_kn_rd_0_0_kn_rd_v1_0 is
  port (
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of kn_rd_tb_kn_rd_0_0_kn_rd_v1_0 : entity is "kn_rd_v1_0";
end kn_rd_tb_kn_rd_0_0_kn_rd_v1_0;

architecture STRUCTURE of kn_rd_tb_kn_rd_0_0_kn_rd_v1_0 is
begin
kn_rd_v1_0_S00_AXI_inst: entity work.kn_rd_tb_kn_rd_0_0_kn_rd_v1_0_S00_AXI
     port map (
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      led(3 downto 0) => led(3 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity kn_rd_tb_kn_rd_0_0 is
  port (
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of kn_rd_tb_kn_rd_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of kn_rd_tb_kn_rd_0_0 : entity is "kn_rd_tb_kn_rd_0_0,kn_rd_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of kn_rd_tb_kn_rd_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of kn_rd_tb_kn_rd_0_0 : entity is "kn_rd_v1_0,Vivado 2018.3";
end kn_rd_tb_kn_rd_0_0;

architecture STRUCTURE of kn_rd_tb_kn_rd_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN kn_rd_tb_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute x_interface_parameter of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute x_interface_info of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute x_interface_info of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute x_interface_info of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute x_interface_info of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute x_interface_info of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute x_interface_info of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute x_interface_info of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute x_interface_info of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute x_interface_info of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute x_interface_info of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute x_interface_info of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute x_interface_info of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute x_interface_parameter of s00_axi_awaddr : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN kn_rd_tb_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute x_interface_info of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute x_interface_info of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute x_interface_info of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute x_interface_info of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute x_interface_info of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.kn_rd_tb_kn_rd_0_0_kn_rd_v1_0
     port map (
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      led(3 downto 0) => led(3 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
