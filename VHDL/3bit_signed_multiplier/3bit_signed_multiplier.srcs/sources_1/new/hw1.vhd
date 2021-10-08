library IEEE;
use IEEE.STD_LOGIC_1164.ALL, ieee.std_logic_arith.all, ieee.std_logic_signed.all;
use work.reg_mult_pack.all;

entity hw1 is
port(
    x, y: in std_logic_vector(n-1 downto 0);
    rx, ry: out std_logic_vector(n-1 downto 0);
    z: out std_logic_vector(2*n-1 downto 0);
    ck, en: in std_logic
);
end hw1;

architecture Behavioral of hw1 is

component reg --declare the register component
generic (n: natural := 2);
port(
    x: in std_logic_vector(n-1 downto 0);
    z: out std_logic_vector(n-1 downto 0);
    ck, en: in std_logic
);
end component;
signal w1, w2: std_logic_vector(n-1 downto 0);
signal w3: std_logic_vector(2*n-1 downto 0);
begin

regx: reg generic map(n)
port map( x=>x, z=> w1, ck=>ck, en=>en);

regy: reg generic map(n)
port map( x=>y, z=>w2, ck=>ck, en=>en);

regz: reg generic map(2*n)
port map( x=>w3, z=>z, ck=>ck, en=>en);

process(w1, w2)
begin
w3 <= signed(w1)*signed(w2);
end process;

rx <= w1; ry <= w2;
end Behavioral;
