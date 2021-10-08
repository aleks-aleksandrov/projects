    library IEEE;
    use IEEE.STD_LOGIC_1164.ALL;
    use ieee.std_logic_unsigned.all;
    
    entity radix5_adder is
    generic(
        r: natural := 5;
        n: natural := 3
    );
    port(
        x, y: in std_logic_vector(n-1 downto 0);
        z: out std_logic_vector(n-1 downto 0);
        ck, reset: in std_logic
    );
    end radix5_adder;
    
    architecture Behavioral of radix5_adder is
    type my_state is (no_carry, carry);
    signal n_s: my_state;
    signal temp_x, temp_y: std_logic_vector(n downto 0);
    begin
    temp_x <= '0'&x;
    temp_y <= '0'&y;
    
    process(ck)
    variable temp: std_logic_vector(n downto 0);
    begin
    if ck='1' and ck'event then
        if reset = '1' then
            n_s <= no_carry;
            temp:=(others => '0');
        else
        case n_s is
            when no_carry =>
                temp:= temp_x + temp_y;
                if temp > r-1 then
                    temp:= temp - r;
                    n_s <= carry;
                end if;
            when carry =>
                temp:= temp_x + temp_y;
                temp := temp + 1;
                if temp < r then
                    n_s <= no_carry;
                end if;
                if temp >= r then
                    temp:= temp - r;
                end if;
        end case;
        end if;
    end if;
    z <= temp(n-1 downto 0);
    end process;
    
    end Behavioral;
