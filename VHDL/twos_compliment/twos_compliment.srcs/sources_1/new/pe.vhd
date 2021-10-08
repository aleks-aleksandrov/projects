library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pe is
Port(
    x, c_in: in std_logic;
    z, c_out: out std_logic
);
end pe;

architecture struc of pe is
begin
z <= not x xor c_in;
c_out <= not x and c_in;
end struc;
