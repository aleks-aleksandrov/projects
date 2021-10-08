
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
generic(n: natural := 4);
Port(
    ck, en: in std_logic;
    sel: in std_logic;
    x: in std_logic_vector(n-1 downto 0);
    y,z: out std_logic_vector(n-1 downto 0));
end reg;

architecture Behavioral of reg is
signal temp1, temp2: std_logic_vector(n-1 downto 0); -- this will hold the "memory"
begin

process(ck)
begin
if ck='1' and ck'event then
    if en = '1' then
        if sel = '0' then 
            temp1 <= x;
        else 
            temp2 <= x;
        end if;
    end if;
end if;
end process;
y <= temp1;
z <= temp2;
end Behavioral;
