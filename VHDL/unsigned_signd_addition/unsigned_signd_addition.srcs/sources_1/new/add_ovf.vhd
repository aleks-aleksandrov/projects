library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all,
ieee.std_logic_unsigned.all;

entity add_ovf is
generic(n: natural);
port(
    x, y: in std_logic_vector(n-1 downto 0);
    z: out std_logic_vector(n-1 downto 0);
    ovf: out std_logic
);
end add_ovf;

architecture Behavioral of add_ovf is
begin

process(x, y)
variable w3: std_logic_vector(n-1 downto 0);
begin
w3:=x + y;
if x(n-1) = y(n-1) then
    if w3(n-1) = x(n-1) then 
        ovf<='0';
    else
        ovf <= '1';
    end if;
else
    ovf <= '0';
end if;

end process;
end Behavioral;
