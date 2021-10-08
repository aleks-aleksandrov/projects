library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity bcd_add is
Port(
    a,b: in std_logic_vector(3 downto 0);
    cin: in std_logic;
    c: out std_logic_vector(3 downto 0);
    cout: out std_logic
);
end bcd_add;

architecture Behavioral of bcd_add is

begin
process(a, b, cin)
variable temp, tempa, tempb: std_logic_vector(4 downto 0);
begin
tempa:='0'&a;
tempb:='0'&b;
temp:= tempa + tempb;

if cin = '1' then
    temp := temp + "00001";
end if;
if temp >= "01001" then
    temp := temp - "001100";
    cout <= '1';
else
    cout <='0';
end if;

c <= temp(3 downto 0);
end process;
end Behavioral;
