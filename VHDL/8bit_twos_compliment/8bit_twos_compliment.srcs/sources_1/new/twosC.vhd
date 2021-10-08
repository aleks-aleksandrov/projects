library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity twosC is
Port ( 
    x : in std_logic_vector(7 downto 0);
    z: out std_logic_vector(7 downto 0)
);
end twosC;

architecture Behavioral of twosC is
component pe
port(xi, ci: in std_logic;
    xo, co: out std_logic);
end component;
signal carry: std_logic_vector(7 downto 0);
begin

carry(0) <= '1';

G1: for i in 0 to 7 generate
    G2: if i < 7 generate
        Cell: pe port map(x(i),carry(i),z(i), carry(i+1));
    end generate G2;
    G3: if i = 7 generate
        Cell: pe port map(x(i),carry(i),z(i), open);
    end generate G3;
    
end generate G1;
end Behavioral;
