library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity abs_array is
generic(n: natural := 4);
port(
    x: in std_logic_vector(n-1 downto 0);
    z: out std_logic_vector(n-1 downto 0)
);
end abs_array;

architecture Behavioral of abs_array is
component pe is
generic(n: natural := 4);
port(
    x, c_in: in std_logic;
    z, c_out: out std_logic
);
end component;
signal c,w: std_logic_vector(n-1 downto 0);
begin
--array calculating -x
c(0)<='1';

G1: for i in 0 to n-1 generate
    G2: if i<n-1 generate
    U:pe port map(x(i),c(i), w(i), c(i+1));
    end generate G2;
    
    G3: if i=n-1 generate
    U: pe port map(x(i),c(i), w(i), open);
end generate G3;
end generate G1;

--mux bellow
process(x(n-1), w)
begin

if x(n-1) = '1' then z<=w;
else z<=x;
end if;

end process;
end Behavioral;
