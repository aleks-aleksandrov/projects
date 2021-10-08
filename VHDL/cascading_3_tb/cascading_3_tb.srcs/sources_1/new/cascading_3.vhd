library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity cascading_3 is
generic (n: natural := 2);
Port(
    x: in std_logic_vector(n-1 downto 0);
    z: out std_logic_vector(n-1 downto 0);
    ck, reset: in std_logic);
end cascading_3;

architecture Beh of cascading_3 is

signal temp1, temp2, temp3: std_logic_vector(n-1 downto 0);
begin
process(ck)
begin

if ck='1' and ck'event then
    if reset = '1' then
        temp1 <= (others => '0');
        temp2 <= (0 => '1', others => '0');
        temp3 <= (1 => '1', others => '0');
    else
        temp1 <= x;
        temp2 <= temp1;
        temp3 <= temp2;
    end if;
end if;
end process;

z <= temp3;
end Beh;
