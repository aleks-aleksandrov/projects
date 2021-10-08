library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sh_reg is
generic(M : natural := 3);
port(
    x: in std_logic;
    z: out std_logic_vector(M-1 downto 0);
    reset, ck: in std_logic
);
--  Port ( );
end sh_reg;

architecture Behavioral of sh_reg is
signal temp :  std_logic_vector(M-1 downto 0);
signal parity: std_logic; 
begin

process(ck) -- L=3; n=4
variable counter: integer;
begin
if ck='1' and ck'event then
    if reset = '1' then
        counter := 0;
        parity <= '0';
        for i in 0 to M-1 loop
            temp(i) <= '0';
        end loop;
    else
        if counter < M-1 then
            temp <= x&temp(M-1 downto 1);
            if x = '1' then 
                parity <= not parity;
            end if;
            counter := counter + 1;
        elsif counter = M-1 then
            temp <= parity&temp(M-1 downto 1);
            counter := counter + 1;
        end if;
    end if;
end if;
end process;

z <= temp;
end Behavioral;
