library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity udram is
port(
    up,clr,ck,en_cnt: in std_logic;
    we: in std_logic_vector(0 downto 0);
    din: in std_logic_vector(3 downto 0);
    dout: out std_logic_vector(3 downto 0)
);
end udram;

architecture Struc of udram is
component blk_mem_gen_0
PORT(
    clka: in std_logic;
    wea: in std_logic_vector(0 downto 0);
    addra: in std_logic_vector(3 downto 0);
    dina: in std_logic_vector(3 downto 0);
    douta: out std_logic_vector(3 downto 0)
);
end component;

component c_counter_binary_0
PORT(
    CLK: in std_logic;
    CE: in std_logic;--enable
    SCLR: in std_logic;--clear
    UP: in std_logic;
    Q: out std_logic_vector(3 downto 0)
);
end component;
signal addr: std_logic_vector(3 downto 0);
begin
bram: blk_mem_gen_0
PORT MAP(
    clka=>ck,
    wea=>we,
    addra=>addr,
    dina=>din,
    douta=>dout
);
me: c_counter_binary_0
PORT MAP(
    CLK => ck,
    CE => en_cnt,
    SCLR => clr,
    UP =>UP,
    Q => addr
);
end Struc;
