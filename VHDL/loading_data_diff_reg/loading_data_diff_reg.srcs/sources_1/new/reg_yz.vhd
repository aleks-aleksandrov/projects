library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity reg_yz is
generic (n: natural := 2);
port(
    x: in std_logic_vector(n-1 downto 0);
    sel: in std_logic;
    ck: in std_logic;
    y, z: out std_logic_vector(n-1 downto 0)
);
end reg_yz;

architecture Behavioral of reg_yz is


end component;
begin

process(ck)
begin

end process;

end Behavioral;
