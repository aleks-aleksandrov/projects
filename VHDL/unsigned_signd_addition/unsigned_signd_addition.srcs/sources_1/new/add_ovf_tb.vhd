library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity add_ovf_tb is
port(
    x,y: in std_logic_vector(3 downto 0);
    z: out std_logic_vector(3 downto 0);
    ovf: out std_logic
);
end add_ovf_tb;

architecture struc of add_ovf_tb is
component add_ovf
generic(n: natural);
port(
    x, y: in std_logic_vector(n-1 downto 0);
    z: out std_logic_vector(n-1 downto 0);
    ovf: out std_logic
);
end component;
begin

DUT: add_ovf generic map(4)
port map(x, y, z, ovf);

end struc;
