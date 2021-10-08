----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/23/2020 04:05:21 PM
-- Design Name: 
-- Module Name: clkdivider - Behavioral
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

entity clkdivider is
--  Port ( );
    Port (ck, reset: in std_logic;
        z : out std_logic);
end clkdivider;

architecture Behavioral of clkdivider is
signal ck1 : std_logic; --signal will only change after a clock cycle
signal count : integer;
begin
-- wire ck1 to output
z <= ck1; --connects a signal to the output
process(ck)
begin
if ck = '1' and ck'event then --ck'event - rising edge
    if reset = '1' then
        count <= 0;
        ck1 <= '0';
    else
        count <= count + 1;
        if count > 9999999 then  --when the counter goes over 3 - reset everything
            count <= 0;
            ck1 <= not ck1; --ck1 to opposite value
        end if;
    end if;
end if; 
end process;
end Behavioral;
