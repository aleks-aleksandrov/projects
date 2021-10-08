library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity p2s is
generic (n: natural := 2);
port(
    ck,reset : in std_logic;
    x: in std_logic_vector(n-1 downto 0);
    z: out std_logic
);
end p2s;

architecture Behavioral of p2s is
signal temp: std_logic_vector(n-1 downto 0);
begin
z <= temp(0); -- wire output

process(ck)
subtype my_int is integer range 0 to n-1; -- n=2
variable count : my_int;
begin
if ck='1' and ck'event then
    if reset = '1' then 
        temp <= x; 
        count := 0; 
    else
        if count < n-1 then
            temp <= '0'&temp(n-1 downto 1);
            count := count + 1;
        else
            temp <= x; count := 0;
        end if;
    end if;
end if;
end process;

end Behavioral;
