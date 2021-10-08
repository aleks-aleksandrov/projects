library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shift_reg is
generic (
    n : natural := 4;
    L : natural := 3
);
port(
    x: in std_logic_vector(n-1 downto 0);
    z: out std_logic_vector(n-1 downto 0);
    ck, reset, en : in std_logic
);
end shift_reg;

architecture Behavioral of shift_reg is
type vector_array is array (natural range <>) of std_logic_vector(n-1 downto 0);
signal temp : vector_array(L-1 downto 0);
begin

process(ck) -- L=3; n=4
begin
if ck='1' and ck'event then
    if reset = '1' then
        for i in 0 to L-1 loop
            temp(i) <= (others => '0');
        end loop;
    else
        if en='1' then
            temp <= x&temp(L-1 downto 1);
        end if;
    end if;
end if;
end process;

z <= temp(0);
end Behavioral;
