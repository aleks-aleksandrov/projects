library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all,
ieee.std_logic_unsigned.all;

entity count_ones_tb is
Port(x, ck, reset, btn0, btn1: in std_logic;
    z: out std_logic_vector(3 downto 0)
);
end count_ones_tb;

architecture struct of count_ones_tb is
--declare component
component count_ones
generic(n : natural := 2);
Port(x,ck,reset: in std_logic;
    z: out std_logic_vector(n-1 downto 0)
);
end component;
signal en: std_logic;
begin

U : count_ones generic map(n=>4)
    port map (ck=>en, x=>x, z=>z, reset=>reset);

--single step
--btn0 to enter and btn1 to reset
process(ck)

type db_state is (not_rdy, rdy, pulse);
variable db_ns: db_state;
begin
if ck='1' and ck'event then -- on a rising edge of the clock
    case db_ns is --check status of db_ns
    when not_rdy => en <= '0'; --if nor rdy and btn1 is pressed -> rdy
    if btn1 = '1' then
        db_ns := rdy;
    end if;
    when rdy => en <= '0'; -- if rdy and btn0 is pressed - pulse
    if btn0 = '1' then
        db_ns := pulse;
    end if;
    when pulse => en <= '1'; -- if pulse en = 1
    db_ns := not_rdy;
    when others => null;
    end case;
end if;
end process;

end struct;
