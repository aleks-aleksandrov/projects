library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity twosc_sys_tb is
Port(
    x:in std_logic_vector(7 downto 0);
    z: out std_logic_vector(7 downto 0);
    go, ck, reset: in std_logic
);
end twosc_sys_tb;

architecture struc of twosc_sys_tb is
component twos_c
generic(n: natural := 4);
Port(
    x: in std_logic_vector(n-1 downto 0);
    z: out std_logic_vector(n-1 downto 0);
    go, ck, reset: in std_logic
);
end component;
begin
U: twos_c generic map(8)
    port map(x, z, go, ck, reset);
end struc;
