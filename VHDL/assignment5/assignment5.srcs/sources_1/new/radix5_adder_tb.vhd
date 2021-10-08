library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity radix5_adder_tb is
generic(
    n: natural := 3
);
port(
    x, y: in std_logic_vector(n-1 downto 0);
    z: out std_logic_vector(n-1 downto 0);
    ck, reset, btn0, btn1: in std_logic
);
end radix5_adder_tb;

architecture struc of radix5_adder_tb is

component radix5_adder
generic(
    n: natural := 3
);
Port(
    x, y: in std_logic_vector(n-1 downto 0);
    z: out std_logic_vector(n-1 downto 0);
    ck, reset: in std_logic
);
end component;
signal en: std_logic;
begin
U : radix5_adder port map (ck=>en, x=>x, y=>y, reset=>reset, z=>z);
    
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

end struc;
