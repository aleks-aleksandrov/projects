library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity fifo is
Port(
    ck: in std_logic;
    reset: in std_logic;
    din: in std_logic_vector(3 downto 0);
    wren: in std_logic;
    rden: in std_logic;
    dout: out std_logic_vector(3 downto 0);
    full: out std_logic;
    empty: out std_logic
);
end fifo;

architecture Struc of fifo is
component fifo_generator_0
PORT(
    clk: in std_logic;
    srst: in std_logic;
    din: in std_logic_vector(3 downto 0);
    wr_en: in std_logic;
    rd_en: in std_logic;
    dout: out std_logic_vector(3 downto 0);
    full: out std_logic;
    empty: out std_logic  
);
end component;
begin
me: fifo_generator_0
PORT MAP(
    clk => ck,
    srst => reset,
    din => din,
    wr_en => wren,
    rd_en => rden,
    dout => dout,
    full => full,
    empty => empty
);
end Struc;
