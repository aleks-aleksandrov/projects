library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity reg_bank is
port(
    x: in std_logic_vector(3 downto 0);
    Btns: in std_logic_vector(3 downto 0);
    z: out std_logic_vector(7 downto 0);
    Disp_en: out std_logic_vector(3 downto 0);
    ck, reset: in std_logic
);
end reg_bank;

architecture Behavioral of reg_bank is

signal r0,r1,r2,r3: std_logic_vector(3 downto 0);
Type my_state is (s0, s1, s2, s3); --states for the four 7-seg displays
Signal n_s: my_state;
Signal CK_div: std_logic;
Signal sw_sel: std_logic_vector(0 to 3);

begin

process(ck)
begin
if ck='1' and ck'event then
case btns is
    when "1000" => r0 <= x; --disp_en <= "0111";
    when "0100" => r1 <= x; --disp_en <= "1011";
    when "0010" => r2 <= x; --disp_en <= "1101";
    when "0001" => r3 <= x; --disp_en <= "1110";
    when others => null; --disp_en <= "1111";
end case;
end if;
end process;

process(SW_sel, r0, r1, r2, r3)
variable temp: std_logic_vector(3 downto 0);
begin

case sw_sel is
    when "1000" => temp := r0;
    when "0100" => temp := r1;
    when "0010" => temp := r2;
    when "0001" => temp := r3;
    when others => temp :=  "0000";
end case;

case temp is
    when "0000" => z <= "00000011";
    when "0001" => z <= "10011111";
    when "0010" => z <= "00100101";
    when "0011" => z <= "00001101";
    when "0100" => z <= "10011001";
    when "0110" => z <= "01000001";
    when "0111" => z <= "00011111";
    when "1000" => z <= "00000001";
    when "1001" => z <= "00001001";
    when "1010" => z <= "00010001";
    when "1011" => z <= "11000001";
    when "1100" => z <= "01100011";
    when "1101" => z <= "10000101";
    when "1110" => z <= "01100001";
    when "1111" => z <= "01110001";
    when others => null;
end case;
end process;

process(ck_div)
begin
if ck_div'event and ck_div='1' then
case n_s is
    when s0 => sw_sel <="1000"; disp_en<="0111";n_s <= s1;
    when s1 => sw_sel <="0100"; disp_en<="1011";n_s <= s2;
    when s2 => sw_sel <="0010"; disp_en<="1101";n_s <= s3;
    when s3 => sw_sel <="0001"; disp_en<="1110";n_s <= s0;
end case;
end if;
end process;

process(ck)
variable count: integer;
begin
if ck = '1' and ck'event then
    if reset = '1' then
        count := 0;
        ck_div <= '0';
    elsif reset = '0' then
        if count = 99999 then
            ck_div <= not ck_div;
            count := 0;
        else
            count := count + 1;
        end if;
    end if;
end if;
end process;
end Behavioral;
