library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bca is
port(
    x, reset, ck, b0, b1: in std_logic;
    z: out std_logic
);
end bca;

architecture Behavioral of bca is
type my_state is(
    s1, s2, chill
);
signal n_s: my_state;

begin


end Behavioral;
