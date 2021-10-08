library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity array_adder_tb is
Port(
    x, y: in std_logic_vector(3 downto 0);
    z: out std_logic_vector(3 downto 0)
);
end array_adder_tb;

architecture struc of array_adder_tb is

component array_adder
generic(n: natural);
Port(
    x, y: in std_logic_vector(n-1 downto 0);
    z: out std_logic_vector(n-1 downto 0)
);
end component;

begin
U: array_adder generic map(n => 4)
port map(x=>x, y=>y, z=>z);

end struc;
