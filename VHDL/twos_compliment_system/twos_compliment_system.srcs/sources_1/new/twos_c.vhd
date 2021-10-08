library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity twos_c is
generic(n: natural := 2);
Port(
    x: in std_logic_vector(n-1 downto 0);
    z: out std_logic_vector(n-1 downto 0);
    go, reset, ck: in std_logic
);
end twos_c;

architecture Behavioral of twos_c is
signal temp1, temp2: std_logic_vector(n-1 downto 0);
subtype my_int is integer range 0 to n;
signal count: my_int;

type my_state is(idle, load, copy, invert);
signal n_s: my_state;
begin
process(ck)
begin
if ck='1' and ck'event then
    if reset='1' then n_s <= idle;
    else
    case n_s is
    when idle =>
        if go='1' then n_s <= load;
        temp1 <= (others => '0');
        temp2 <= (others => '0');
        end if;
    when load =>
        temp1 <= x; -- load x to register
        count <= 0; --counter 0
        n_s <= copy;
    when copy =>
        if temp1(count) = '0' then
            temp2(count) <= '0';
        else
            temp2(count) <= '1';
            n_s <= invert;
        end if;
        count <= count +1;
     when invert =>
        if count < n then
            temp2(count) <= not temp1(count); --invert the bit
            count <= count +1;
        else
            n_s <= idle;
        end if;
     end case;
     end if;
end if;
end process;
z <= temp2;
end Behavioral;
