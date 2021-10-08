library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity cascadereg4 is
Port(
    x: in std_logic_vector(3 downto 0);
    z1, z2: out std_logic_vector(3 downto 0);
    ck, en: in std_logic
);
end cascadereg4;

architecture structural of cascade_reg4 is
--Create the components

component reg
generic (n: natural);
Port(
    ck, ld_en: in std_logic;
    x: in std_logic_vector(n-1 downto 0);
    z: out std_logic_vector(n-1 downto 0));
end component;

signal w: std_logic_vector(3 downto 0); --connecting signal between the two registers

begin
R1: reg generic map (4)
    port map(x=>x,z=>w,ck=>ck,ld_en=>en); -- x - input; z - outputs to signal
R2: reg generic map (4)
    port map(x=>w,z=>z2,ck=>ck,ld_en=>en); -- the input is from the signal
z1 <= w; --wire w to Z1
end structural;
