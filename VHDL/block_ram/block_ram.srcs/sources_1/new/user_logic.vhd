library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity user_logic is --Part logic
Port(
    ck: in std_logic;
    we: in std_logic;
    addr: in std_logic_vector(9 downto 0);
    din: in std_logic_vector(31 downto 0);
    dout: out std_logic_vector(31 downto 0)
);
end user_logic;

architecture Behavioral of user_logic is
component blk_mem_gen_0 --ports of the ip
Port(
    clka: in std_logic;
    wea: in std_logic_vector(0 downto 0);
    addra: in std_logic_vector(9 downto 0);
    dina: in std_logic_vector(31 downto 0);
    douta: out std_logic_vector(31 downto 0)
);
end component;
signal wren: std_logic_vector(0 downto 0);

begin
wren(0) <= we;

me: blk_mem_gen_0
PORT MAP( --map Ip ports to user ports
    clka => ck,
    wea => wren,
    addra => addr,
    dina => din,
    douta => dout
);
end Behavioral;
