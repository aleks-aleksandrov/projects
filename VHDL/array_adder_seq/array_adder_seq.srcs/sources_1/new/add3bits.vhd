library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity add3bits is
Port(
    x, y, c_in: in std_logic;
    s, c_out: out std_logic
);
end add3bits;

architecture Behavioral of add3bits is
begin
process(x)

subtype my_int is integer range 0 to 3;
variable count: my_int; --range 0 to 3

begin
count := 0;

    if x = '1' then
        count := count + 1;
    end if;
    if y = '1' then
        count := count + 1;
    end if;
    if c_in = '1' then
        count:=count + 1;
    end if;
case count is
    when 0 => c_out <= '0'; s<='0';
    when 1 => c_out <= '0'; s<='1';
    when 2 => c_out <= '1'; s<='0';
    when 3 => c_out <= '1'; s<='1';
    when others => c_out <= '0'; s<='0';
end case;
end process;

end Behavioral;

