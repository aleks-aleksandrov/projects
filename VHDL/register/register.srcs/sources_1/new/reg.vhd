----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/23/2020 06:25:01 PM
-- Design Name: 
-- Module Name: reg - Behavioral
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

entity reg is
--  Port ( );
generic (n: natural := 3);
    Port(x: in std_logic_vector(n-1 downto 0);
    z : out std_logic_vector(n-1 downto 0);
    ck: in std_logic
);
end reg;

architecture Behavioral of reg is
signal temp: std_logic_vector(n-1 downto 0); --like declaring a variable

begin

process(ck) --when a clock signal changes we are gonna start the process code
begin
if ck = '1' and ck'event then
    temp <= x;
end if;

z <= temp;
end process;
end Behavioral;
