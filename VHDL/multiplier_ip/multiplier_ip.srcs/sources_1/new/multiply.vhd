library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity multiply is
Port(
    ck: in std_logic;
    a: in std_logic_vector(3 downto 0);
    b: in std_logic_vector(3 downto 0);
    p: out std_logic_vector(7 downto 0)
);
end multiply;

architecture Behavioral of multiply is
component mult_gen_0
Port(
    CLK: in std_logic;
    A: in std_logic_vector(3 downto 0);
    B: in std_logic_vector(3 downto 0);
    P: out std_logic_vector(7 downto 0)
);
end component;
begin
me: mult_gen_0
PORT MAP(
    CLK=>ck,
    B => b,
    A => a,
    P => p
);

end Behavioral;
