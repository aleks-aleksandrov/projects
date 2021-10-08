library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity user_logic is

generic (
    LED_num : integer := 8;
-- Width of S_AXI address bus
    saddr_width : integer := 4
);

Port (
    ck, en, resetN : in std_logic;
    x: in std_logic_vector(LED_num - 1 downto 0);
    z: out std_logic_vector(LED_num - 1 downto 0);
    slv_reg_addr: in std_logic_vector(saddr_width-1 downto 0)
);
end user_logic;

architecture Behavioral of user_logic is
    signal temp : std_logic_vector(led_num - 1 downto 0);
    signal reg0_addr, reg1_addr : std_logic_vector(saddr_width-1 downto 0);
begin

reg0_addr <= (others => '0');
reg1_addr <= (2 => '1', others => '0'); -- slv_reg1 addr is 4

process(ck)
begin
    if ck='1' and ck'event then
    
    if resetN = '0' then -- active-low reset
        temp <= (others => '0');
    else
    if en = '1' and slv_reg_addr = reg0_addr then
        temp <= x;
    elsif en = '1' and slv_reg_addr = reg1_addr then
        temp <= temp(0)&temp(led_num-1 downto 1);
    end if;
    end if;
    end if;
end process;

z <= temp;
end Behavioral;