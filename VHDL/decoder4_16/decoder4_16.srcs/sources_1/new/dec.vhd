----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/23/2020 04:41:42 PM
-- Design Name: 
-- Module Name: dec - Behavioral
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

entity dec is
--  Port ( );
    Port(x : in std_logic_vector(3 downto 0);
    z: out std_logic_vector(15 downto 0);
    en: in std_logic);
end dec;

architecture Behavioral of dec is

begin
process(en, x)
begin
if en = '1' then
case x is
    when "0000" => z <= (0 => '1', others => '0'); -- assign 0 to 1 and others to 0
    when "0001" => z <= (1 => '1', others => '0');
    when "0010" => z <= (2 => '1', others => '0'); -- 
    when "0011" => z <= (3 => '1', others => '0');
    when "0100" => z <= (4 => '1', others => '0');
    when "0101" => z <= (5 => '1', others => '0');
    when "0110" => z <= (6 => '1', others => '0');
    when "0111" => z <= (7 => '1', others => '0');
    when "1000" => z <= (8 => '1', others => '0');
    when "1001" => z <= (9 => '1', others => '0');
    when "1010" => z <= (10 => '1', others => '0');
    when "1011" => z <= (11 => '1', others => '0');
    when "1100" => z <= (12 => '1', others => '0');
    when "1101" => z <= (13 => '1', others => '0');
    when "1110" => z <= (14 => '1', others => '0');
    when "1111" => z <= (15 => '1', others => '0');
    when others => z <= (others => '0');
end case;
else z <= (others => '0');
end if;
end process;
end Behavioral;
