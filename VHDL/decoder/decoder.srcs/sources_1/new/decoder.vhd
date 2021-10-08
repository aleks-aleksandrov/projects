----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/22/2020 04:56:50 PM
-- Design Name: 
-- Module Name: decoder - Behavioral
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


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity decoder is
--  Port ( );
    Port (x : in std_logic_vector(1 downto 0);
        z : out std_logic_vector(3 downto 0);
        en : in std_logic);
end decoder;

architecture Behavioral of decoder is

begin
process(en, x)
begin
if en = '1' then
case x is
    when "00" => z <= "0001";
    when "01" => z <= "0010";
    when "10" => z <= "0100";
    when "11" => z <= "1000";
    when others => z <= (others => '0');
end case;
else z <= (others => '0');
end if;
end process;

end Behavioral;
