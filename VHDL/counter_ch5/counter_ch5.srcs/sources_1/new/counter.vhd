library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity counter is
generic(n: natural := 4);
port(
    z: out std_logic_vector(n-1 downto 0);
    ck, reset, up_down: in std_logic
);
end counter;

architecture Behavioral of counter is
signal count: std_logic_vector(n-1 downto 0);

begin

process(ck)
begin
if ck='1' and ck'event then

    if reset='1' then
        count <= (others => '0');
    else
    if up_down = '0' then
        count <= count + 1;
    else
        count <= count - 1;
    end if;
    
    end if;
end if;
end process;
z <= count;
end Behavioral;
