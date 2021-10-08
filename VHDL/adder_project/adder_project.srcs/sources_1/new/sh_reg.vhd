
library IEEE;
use IEEE.STD_LOGIC_1164.ALL, work.p1_pack.all;


entity sh_reg is
Generic(n: natural := 4);
Port(
    x: in std_logic_vector(n-1 downto 0);
    z: out std_logic;
    sel: in sh_reg_sel;
    ck: in std_logic
);
end sh_reg;

architecture Behavioral of sh_reg is
signal temp: std_logic_vector(n-1 downto 0);
begin

process(ck)
begin
if ck='1' and ck'event then
case sel is
    when no_op => null;
    when load => temp <= x;
    when shift =>
        for i in n-2 downto 0 loop
            temp(i) <= temp(i+1);
        end loop;
end case;
end if;
end process;
z <= temp(0);
end Behavioral;
