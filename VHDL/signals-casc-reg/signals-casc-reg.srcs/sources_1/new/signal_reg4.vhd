library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity signal_reg4 is

port(
    X: in std_logic_vector(3 downto 0);
    Z1: out std_logic_vector(3 downto 0);
    Z2: out std_logic_vector(3 downto 0);
    en, ck, btn0, btn1: in std_logic
);
end signal_reg4;

architecture Behavioral of signal_reg4 is
-- signals for register placeholders
signal temp1, temp2: std_logic_vector(3 downto 0);
signal ck_step: std_logic;

begin
-- cascade registers triggered by ck_step
process(ck_step)
begin
if ck_step = '1' and ck_step'event then
    if en ='1' then
        temp2 <= temp1;
        temp1 <=x;
    end if;
end if;
end process;
-- wire register contents to output ports
z1 <= temp1;
z2 <= temp2;

-- single step clock pulse
-- btn0 to enter and btn1 to reset
process(ck)
type state is (not_rdy, rdy, pulse);
variable ns: state;
begin
    if ck='1' and ck'event then
        case ns is
            when not_rdy => ck_step <= '0';
            if btn1 = '1' then ns := rdy; end if;
            when rdy => ck_step <= '0';
            if btn0 = '1' then ns := pulse; end if;
            when pulse => ck_step <= '1';
            ns := not_rdy;
            when others => null;
         end case;
    end if;        
end process;

end Behavioral;
