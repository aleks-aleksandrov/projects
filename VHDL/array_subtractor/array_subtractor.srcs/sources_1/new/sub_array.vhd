library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sub_array is
generic(n: natural :=2 );
Port(
    x, y: in std_logic_vector(n-1 downto 0);
    bin: in std_logic;
    z: out std_logic_vector(n-1 downto 0);
    bout: out std_logic
);
end sub_array;

architecture struc of sub_array is
signal b: std_logic_vector(n downto 0);
component sub_cell
Port(
    x, y, bin: in std_logic;
    z, bout: out std_logic
);
end component;
begin

b(0) <= bin;
bout <= b(n);
G1: for i in 0 to n-1 generate -- for each bit in X and Y call the sub cell
    cell: sub_cell port map(x(i), y(i), b(i), z(i), b(i+1));
end generate G1;

end struc;
