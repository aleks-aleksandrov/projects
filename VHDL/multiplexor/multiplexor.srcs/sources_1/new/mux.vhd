----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/23/2020 02:39:15 PM
-- Design Name: 
-- Module Name: mux - Behavioral
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

entity mux is
--  Port ( );
    Port (x: in std_logic_vector(3 downto 0);
        sel: in std_logic_vector(1 downto 0);
        z, zL : out std_logic);
end mux;

architecture Behavioral of mux is

begin

process(x , sel)
begin
case sel is
    when "00" =>
        z <= x(0); zL <= not x(0);
    when "01" =>
        z <= x(1); zL <= not x(1);
    when "10" =>
        z <= x(2); zL <= not x(2);
    when "11" =>
        z <= x(3); zL <= not x(3);
    when others =>
        z <= '1'; zL <= '1';
end case;
end process;
end Behavioral;
