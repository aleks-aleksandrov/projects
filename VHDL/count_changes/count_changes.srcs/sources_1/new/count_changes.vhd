library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity count_changes is
Port(
    x,ck,reset: in std_logic;
    z: out std_logic_vector(3 downto 0)
);
end count_changes;

architecture Behavioral of count_changes is
signal count : std_logic_vector(3 downto 0);
signal old_x : std_logic;
begin

process(ck)
begin
    if ck='1' and ck'event then
        if reset = '1' then
            count <= (others => '0'); -- initialize count
            old_x <= '0';
        else
            if not(x = old_x) then
                count <=count + 1;
            end if;
            old_x <= x;
        end if;
     end if;
end process;
end Behavioral;
