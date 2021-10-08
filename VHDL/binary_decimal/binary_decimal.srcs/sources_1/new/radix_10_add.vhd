library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity radix_10_add is
Port(
    x,y: in std_logic_vector(3 downto 0);
    c_in: in std_logic;
    z: out std_logic_vector(3 downto 0);
    c_out: out std_logic
);
end radix_10_add;

architecture Behavioral of radix_10_add is

begin
process(x, y, c_in)
variable temp_x, temp_y, temp_z: std_logic_vector(4 downto 0);
begin
temp_x:='0'&x;
temp_y:='0'&y;
temp_z:= unsigned(temp_x) + unsigned(temp_y);

if c_in = '1' then
    temp_z := unsigned(temp_z) + 1;
end if;
if temp_z >= 10 then
    temp_z := unsigned(temp_z) - 10;
    c_out <= '1';
else
    c_out <='0';
end if;

z <= temp_z(3 downto 0);
end process;
end Behavioral;
