----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/30/2020 12:50:30 PM
-- Design Name: 
-- Module Name: regt4 - Behavioral
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

entity regt4 is
--  Port ( );
Port(ck, en: in std_logic;
    y: in std_logic_vector(3 downto 0);
    z: out std_logic_vector(3 downto 0));
end regt4;

architecture struc of regt4 is

component reg
generic(n: natural);
Port(ck, ld_en: in std_logic;
x: in std_logic_vector(n-1 downto 0);
z: out std_logic_vector(n-1 downto 0));
end component;

begin
U1: reg generic map(4)
port map(x=>y, z=>z, ck=>ck, ld_en=>en);
end struc;
