----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/30/2020 01:57:15 PM
-- Design Name: 
-- Module Name: reg-rev5 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

--NOTE: This is not according to the task??
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity regrev5 is
generic(n: natural := 5);
Port(x: in std_logic_vector(n-1 downto 0);
    z: out std_logic_vector(n-1 downto 0);
    ck, ld_en: in std_logic);

end regrev5;

architecture Behavioral of regrev5 is
signal temp: std_logic_vector(n-1 downto 0); -- this will hold the "memory" 
begin

process(ck)
begin

if ck='1' and ck'event then
    if ld_en = '1' then
        --Make the temp the reverse of x if entered is 1110 -> 0111
        for i in 0 to n-1 loop
            temp(i) <= x(n-1-i);
        end loop;
    end if;
end if;
end process; 
z <= temp;
end Behavioral;
