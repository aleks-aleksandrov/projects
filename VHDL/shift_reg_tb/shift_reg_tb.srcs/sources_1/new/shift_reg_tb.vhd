library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shift_reg_tb is
Port(
    x: in std_logic_vector(3 downto 0);
    z: out std_logic_vector(3 downto 0);
    ck, btn0, btn1, ld, s: in std_logic);
end shift_reg_tb;

architecture struct of shift_reg_tb is
-- declare a cascading component
component shift_reg
generic (n: natural := 4);
port(x: in std_logic_vector(n-1 downto 0);
    z: out std_logic_vector(n-1 downto 0);
    ck, ld, s: in std_logic);
end component;

signal en :std_logic; --single step signal
begin
-- component instantiation syntax
-- label: component name generic map(...) port map(...);
-- the label "dut" is device-under-test

dut : shift_reg generic map(n=>4)
    port map (ck=>en, x=>x, z=>z, ld=>ld, s=>s);

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
