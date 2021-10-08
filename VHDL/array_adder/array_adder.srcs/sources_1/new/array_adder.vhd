library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity array_adder is
generic(n : natural := 2);
Port(
    x, y : in std_logic_vector(n-1 downto 0);
    z : out std_logic_vector(n-1 downto 0)
);
end array_adder;

architecture Structural of array_adder is
signal c: std_logic_vector( n-1 downto 0);

--add3bits component
component add3bits
Port(
    x,y,c_in : in std_logic;
    s, c_out: out std_logic
);
end component;
begin
c(0) <='0';

G1: for i in 0 to n-1 generate
    G2: if i < n-1 generate
    U: add3bits
    port map(
        x => x(i), y => y(i), c_in => c(i),
        s => z(i), c_out => c(i+1)
    );
    end generate G2;
    G3: if i = n-1 generate
    U: add3bits
    port map(
        x => x(i), y => y(i), c_in => c(i),
        s => z(i), c_out => open
    );
    end generate G3;
end generate G1;
end Structural;
