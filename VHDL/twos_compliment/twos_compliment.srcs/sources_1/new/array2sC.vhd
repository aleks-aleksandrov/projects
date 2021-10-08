library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity array2sC is
generic(n: natural := 4);
Port(
    x: in std_logic_vector(n-1 downto 0);
    z: out std_logic_vector(n-1 downto 0)
);
end array2sC;

architecture struc of array2sC is
component pe
port(
    x, c_in: in std_logic;
    z, c_out: out std_logic
);
end component;
signal c: std_logic_vector(n-1 downto 0);
begin

c(0) <= '1';
G1: for i in 0 to n-1 generate
G2: if i< n-1 generate
    U: pe port map(x(i), c(i), z(i), c(i+1));
end generate G2;

G3: if i = n-1 generate
U: pe port map(x(i), c(i), z(i), open); -- this is the last bit so we dont care for a c_out
end generate G3;

end generate G1;
end struc;
