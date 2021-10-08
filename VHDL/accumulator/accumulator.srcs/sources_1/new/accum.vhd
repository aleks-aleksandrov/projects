library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity accum is
Port(
    B: in std_logic_vector(15 downto 0);
    ck: in std_logic;
    clr: in std_logic;
    sum: out std_logic_vector(31 downto 0)
);
end accum;

architecture Behavioral of accum is
component c_accum_0
Port(
    B: in std_logic_vector(15 downto 0);
    CLK: in std_logic;
    SCLR: in std_logic;
    Q: out std_logic_vector(31 downto 0)
);
end component;
begin

me: c_accum_0
PORT MAP(
    CLK => ck,
    B => B,
    SCLR => clr,
    Q => sum
);

end Behavioral;
