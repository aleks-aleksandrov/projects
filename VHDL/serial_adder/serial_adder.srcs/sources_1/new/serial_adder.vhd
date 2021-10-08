--Description: Serial Adder
-- a,b are bit serial input operands
-- to add two n bit vectors x and y
-- apply reset high and then low
-- apply x(i) and y(i) at port a and b
-- from the least to most significant bit
-- after n applications of operands
-- done flag is high, s is the addition and
-- c_out is the carry out (overflow)
-- the device idles until reset

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity serial_adder is
generic (n : natural := 3);
port(a,b,ck,reset: in std_logic;
    s: out std_logic_vector(n-1 downto 0);
    c_out, done: out std_logic);
end serial_adder;

architecture Behavioral of serial_adder is

signal state: std_logic; --storage carry to next position
signal temp: std_logic_vector(n-1 downto 0); --storage for partial sum
signal carry, sum: std_logic; --wires for logic adding 3 bits

component add3bits -- adding 3 bits logic
Port(x: in std_logic_vector(2 downto 0);
    z: out std_logic_vector(1 downto 0));
end component;

begin
process(ck)
subtype my_int is integer range 0 to n;
variable count: my_int;
begin

if ck='1' and ck'event then
    if reset = '1' then -- reset
        state <= '0'; -- init storage next carry
        count :=0; --init count
        temp <= (others => '0'); --clear temp
        done <= '0'; -- output low on done
    else
    -- if not all n operands added then
    -- update next carry
    -- store sum by shifting it into temp
    -- increment count and assign done
        if count < n then
            state <=carry; --update next carry
            temp(n-1)<= sum; --store sum
            for i in n-2 downto 0 loop --shift temp
                temp(i) <= temp(i+1);
            end loop;
            count := count + 1;-- increment count
            
            -- assignng output done
            if count < n then
                done <= '0'; -- output done low
            else -- the addition is done
                done <= '1';
            end if;
         end if;
      end if;
end if;     
end process;

--wire next carry to c_out port
c_out <= state;
--wire temp to s output
s <= temp;
--wire adding 3 bits logic
ADD3b: add3bits port map(
    z(1) => carry, z(0) => sum,
    x(2) => a, x(1) => b, x(0) => state
);
end Behavioral;
