library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity knight_rider is
Port(
    ck, reset, sel: in std_logic;
    z: out std_logic_vector(15 downto 0)
);
end knight_rider;

architecture Behavioral of knight_rider is
type my_state is(
s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11,
s12, s13, s14,s15);
signal n_s: my_state;
signal ck1: std_logic;
begin

process(ck1)
begin
if ck1='1' and ck1'event then
    if reset = '1' then n_s <= s0;
    else 
    case n_s is
        when s0 => z <= "0000000000000001";
           if sel = '1' then n_s <= s1; --go next
           elsif sel='0' then n_s <= s15; -- go prev
           end if;
        when s1 => z <= "0000000000000010";
           if sel = '1' then n_s <= s2; --go next
           elsif sel='0' then n_s <= s0; -- go prev
           end if;
        when s2 => z <= "0000000000000100";
           if sel = '1' then n_s <= s3; --go next
           elsif sel='0' then n_s <= s1; -- go prev
           end if;
        when s3 => z <= "0000000000001000";
           if sel = '1' then n_s <= s4; --go next
           elsif sel='0' then n_s <= s2; -- go prev
           end if;
        when s4 => z <= "0000000000010000";
           if sel = '1' then n_s <= s5; --go next
           elsif sel='0' then n_s <= s3; -- go prev
           end if;
        when s5 => z <= "0000000000100000";
           if sel = '1' then n_s <= s6; --go next
           elsif sel='0' then n_s <= s4; -- go prev
           end if;
        when s6 => z <= "0000000001000000";
           if sel = '1' then n_s <= s7; --go next
           elsif sel='0' then n_s <= s5; -- go prev
           end if;
        when s7 => z <= "0000000010000000";
           if sel = '1' then n_s <= s8; --go next
           elsif sel='0' then n_s <= s6; -- go prev
           end if;
        when s8 => z <= "0000000100000000";
           if sel = '1' then n_s <= s9; --go next
           elsif sel='0' then n_s <= s7; -- go prev
           end if;
        when s9 => z <= "0000001000000000";
           if sel = '1' then n_s <= s10; --go next
           elsif sel='0' then n_s <= s8; -- go prev
           end if;
        when s10 => z <= "0000100000000000";
           if sel = '1' then n_s <= s11; --go next
           elsif sel='0' then n_s <= s9; -- go prev
           end if;
        when s11 => z <= "0001000000000000";
           if sel = '1' then n_s <= s12; --go next
           elsif sel='0' then n_s <= s10; -- go prev
           end if;
        when s12 => z <= "0010000000000000";
           if sel = '1' then n_s <= s13; --go next
           elsif sel='0' then n_s <= s11; -- go prev
           end if;
        when s13 => z <= "0010000000000000";
           if sel = '1' then n_s <= s14; --go next
           elsif sel='0' then n_s <= s12; -- go prev
           end if;
        when s14 => z <= "0100000000000000";
           if sel = '1' then n_s <= s15; --go next
           elsif sel='0' then n_s <= s13; -- go prev
           end if;
        when s15 => z <= "1000000000000000";
           if sel = '1' then n_s <= s0; --go next
           elsif sel='0' then n_s <= s14; -- go prev
           end if;
        when others => null;
        end case;
    end if;
end if;
end process;

process(ck)
variable count: integer;
begin
if ck='1' and ck'event then
    if reset = '1' then
        count := 0; ck1 <= '0';
    else
        if count = 9999999 then
            ck1 <= not ck1; count := 0;
         else 
            count := count + 1;
         end if;
      end if;
end if;
end process;
end Behavioral;
