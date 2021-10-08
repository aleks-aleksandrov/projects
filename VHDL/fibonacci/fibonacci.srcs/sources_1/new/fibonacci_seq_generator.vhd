library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity fibonacci_seq_generator is
generic( n: natural := 15);
port(
    ck, reset: in std_logic;
    z: out std_logic_vector(n-1 downto 0)
);
end fibonacci_seq_generator;

architecture Behavioral of fibonacci_seq_generator is
signal temp1, temp2: std_logic_vector(n-1 downto 0);
begin
process(ck)
begin

if ck='1' and ck'event then
    if reset='1' then
        temp1 <= (others => '0');
        temp2 <= (0 => '1', others => '0');
    else
        temp1 <= temp1 + temp2;
        temp2 <= temp1;       
    end if;
end if;

end process;
z<=temp1;
end Behavioral;
