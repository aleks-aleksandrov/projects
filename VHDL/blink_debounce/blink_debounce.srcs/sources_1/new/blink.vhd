library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity blink is
port(
    b1, ck, reset: in std_logic;
    z: out std_logic
);
end blink;

architecture Behavioral of blink is
signal ck1: std_logic; --slow
signal ck2: std_logic; --fast
signal sel: std_logic;
begin


--slow clock
process(ck)
variable count: integer;
begin
if ck='1' and ck'event then
    if reset = '1' then
        count := 0; ck1 <= '0';
    else
        if count = 99999999 then
            ck1 <= not ck1; count := 0;
         else 
            count := count + 1;
         end if;
      end if;
end if;
end process;

--fast clock
process(ck)
variable count: integer;
begin
if ck='1' and ck'event then
    if reset = '1' then
        count := 0; ck2 <= '0';
    else
        if count = 9999999 then
            ck2 <= not ck2; count := 0;
         else 
            count := count + 1;
         end if;
      end if;
end if;
end process;


process(sel, ck1, ck2)
begin
    if sel = '1' then 
        z <= ck1;
    else
        z <= ck2;
    end if;
end process;

process(ck)
type my_state is(slow, fast, debounce);
variable n_s: my_state;
variable prev_state: integer; --store the previous stage when we enter into a debounce state
variable count: integer;
begin
if ck='1' and ck'event then
    if reset = '1' then n_s := slow;
    else
    case n_s is
        when slow => sel <= '1';
            if b1 = '1' then 
                n_s := debounce;
                prev_state := 0;
            end if;
        when fast => sel <= '0';
            if b1 = '1' then 
                n_s := debounce;
                prev_state := 1;
            end if;
        when debounce => null;
        
            if count = 9999 then --if we are in the debounce state - count
                if b1 = '1' then --if it is still pressed change the sel
                    sel <= not sel;
                    if prev_state = 0 then n_s := fast; sel <= '0';
                    else n_s := slow; sel <= '1';
                    end if;
                else
                    if prev_state = 0 then n_s := slow; sel <= '1';
                    else n_s := fast; sel <= '0';
                    end if;
                end if;
                count := 0;
            else 
                count := count + 1;
            end if;
            
        end case;
     end if;
end if;
end process;
end Behavioral;
