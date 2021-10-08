library IEEE;
use IEEE.std_logic_1164.all;

package bcd_pack is
type bcd_vector is array (natural range <>) of std_logic_vector(3 downto 0);
end bcd_pack;