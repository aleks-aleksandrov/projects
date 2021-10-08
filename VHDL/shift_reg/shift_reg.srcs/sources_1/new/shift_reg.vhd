library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shift_reg is
generic(n : natural := 4);
port(X: in std_logic_vector(n-1 downto 0);
    Z: out std_logic_vector(n-1 downto 0);
    CK, LD, S: in std_logic);
end shift_reg;

architecture Behavioral of shift_reg is
signal temp: std_logic_vector(n-1 downto 0); -- this will hold the "memory"
begin

process(ck)
begin

if CK='1' and CK'event then
    if LD = '1' then
        --Make the temp the reverse of x if entered is 1110 -> 0111
        if S = '1' then --shift enabled
            for i in 0 to n-1 loop
                --temp(i) <= x(n-1-i);
                if i=0 then
                    temp(0) <= X(n-1); --the first bit of temp becomes the last bit of x
                else 
                    temp(i) <= X(i-1); -- the next bit of temp is the i-1 bit of x
                end if;
            end loop;
         else
            temp <= X;
         end if;
    end if;
end if;
end process;
z <= temp;


end Behavioral;
