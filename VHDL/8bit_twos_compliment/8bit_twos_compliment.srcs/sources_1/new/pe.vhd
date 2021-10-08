library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity pe is
port(xi, ci: in std_logic;
    xo, co: out std_logic);
end pe;

architecture struc of pe is
signal temp : std_logic;
begin
 temp <= not xi;
 xo <= temp xor ci;
 co <= temp and ci;
end struc;
