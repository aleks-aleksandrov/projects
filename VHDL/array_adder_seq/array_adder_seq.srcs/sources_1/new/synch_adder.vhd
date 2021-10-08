library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity synch_adder is
Port(
    x, y: in std_logic;
    z: out std_logic;
    ck, reset: in std_logic
);
end synch_adder;

architecture Behavioral of synch_adder is
signal temp, c_out:std_logic;


component add3bits
Port(
    x,y,c_in: in std_logic;
    s, c_out: out std_logic
);
end component;
begin
process(ck)
begin
if ck='1' and ck'event then
    if reset = '1' then temp <= '0';
    else
        temp <= c_out;
     end if;
end if;
end process;

U: add3bits
    port map(
        x=>x, y=>y, c_in => temp, s=>z, c_out => c_out
    );
end Behavioral;
