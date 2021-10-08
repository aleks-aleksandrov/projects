library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sub_array_tb is
port(
    x,y : in std_logic_vector(3 downto 0);
    bin: in std_logic;
    z: out std_logic_vector(3 downto 0);
    bout: out std_logic
);
end sub_array_tb;

architecture struc of sub_array_tb is
component sub_array
generic(n: natural := 2);
port(
    x,y : in std_logic_vector(n-1 downto 0);
    bin: in std_logic;
    z: out std_logic_vector(n-1 downto 0);
    bout: out std_logic
);
end component;
begin

U: sub_array generic map(4)
port map(x, y, bin, z, bout);
end struc;
