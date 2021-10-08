library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sh_reg is
generic(M: natural := 3);
port(
    x: in std_logic;
    z: out std_logic_vector(M-1 downto 0);
    reset, ck: in std_logic
);
end sh_reg;

architecture Behavioral of sh_reg is
signal temp : std_logic_vector(M-1 downto 0);
signal parity: std_logic; 
begin

process(ck)
variable count : integer;
begin
if ck='1' and ck'event then
    if reset = '1' then
        count := 0;
        parity <= '0';
        for i in 0 to M-1 loop
            temp(i) <= '0'; --when reset set all temp bits to zeros
        end loop;
    else
        
        if count < M-1 then -- if we still have cycles left shift
            temp <= x&temp(M-1 downto 1);
            count := count + 1;
            if x = '1' then -- starts at 0 -> there is a 1 parity is 1 another 1 -> parity is 0
                parity <= not parity;
            end if;
        elsif count = M-1 then
            temp <= parity&temp(M-1 downto 1);
            count := count + 1;
        end if;
        
    
    end if;
end if;
end process;

z <= temp;


end Behavioral;
