library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_signed.ALL;

entity sub_cell is
Port(
    x, y, bin: in std_logic;
    z, bout: out std_logic
);
end sub_cell;

architecture Behavioral of sub_cell is

begin
process(x, y, bin)
variable tempx, tempy, tempz: std_logic_vector(1 downto 0);

begin
tempx:='0'&x; --joins arrays  if x is 1 => tempx = 01
-- borrowed?
if bin = '1' then
    tempx := tempx - 1; -- if bin = 1 01 - 1 = 00
end if;

tempy:='0'&y;

if tempx < tempy then
    bout <= '1';
    tempx := tempx + 2;
else
    bout <= '0';
end if;
tempz := tempx - tempy;
z <= tempz(0);

end process;
end Behavioral;
