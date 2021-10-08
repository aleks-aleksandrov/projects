library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all,
ieee.std_logic_unsigned.all;

entity count_ones is
generic(n:natural := 2);
Port(x,ck,reset: in std_logic;
    z: out std_logic_vector(n-1 downto 0)
);
end count_ones;

architecture Behavioral of count_ones is
signal count : std_logic_vector(n-1 downto 0);
begin

process(ck)
begin
if ck='1' and ck'event then
    if reset = '1' then
        count <= (others => '0');
    else
        if x = '1' then 
            count <= count +1;
        end if;
    end if;
end if;
end process;
z<=count;
end Behavioral;
