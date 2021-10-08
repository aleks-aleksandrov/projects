library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fifo_hw is
Port(
    ck, btn0, btn1, reset: in std_logic;
    din: in std_logic_vector(3 downto 0);
    dout: out std_logic_vector(3 downto 0);
    full, empty: out std_logic
);
end fifo_hw;

architecture Behavioral of fifo_hw is
component fifo_generator_0
Port(
    clk: in std_logic;
    srst: in std_logic;
    full: out std_logic;
    din: in std_logic_vector(3 downto 0);
    wr_en: in std_logic;
    rd_en: in std_logic;
    empty: out std_logic;
    dout: out std_logic_vector(3 downto 0)
);
end component;
signal en, en_div, ck_0, sel: std_logic;
signal rden, wren: std_logic;
signal empty_flag, full_flag: std_logic;
type my_state is (waiting_for_full, emptying);
signal n_s: my_state;
begin
U: fifo_generator_0
PORT MAP(
    clk => ck_0,
    srst => reset,
    din => din,
    wr_en => wren,
    rd_en => rden,
    dout => dout,
    full => full_flag,
    empty => empty_flag
);

-- flags to output ports
full<=full_flag;
empty<= empty_flag;

process(en_div, en, sel)
begin
if sel='0' then 
    ck_0 <= en;
else 
    ck_0 <= en_div; 
end if;
end process;

--state machine
process(ck)
begin
if ck='1' and ck'event then
    if reset='1' then
        sel <= '0';
        rden <= '1';
        wren <= '0';
        n_s <= waiting_for_full;
    else
    case n_s is
        when waiting_for_full =>
        if full_flag = '1' then
            sel <= '1';
            rden <= '1';
            wren <= '0';
            n_s <= emptying;
        else
            sel <= '0';
            rden <= '0';
            wren <= '1';
        end if;
        when emptying =>
        if empty_flag = '1' then
            sel<='0';
            rden <= '0';
            wren <= '1';
            n_s <= waiting_for_full;
        else
            sel <= '1';
            rden <= '1';
            wren <= '0';
        end if;
    end case;
    end if;
end if;
end process;

process(ck)--clock devider
variable count: integer;
begin
if ck='1' and ck'event then
    if reset = '1' then
        count := 0;
        en_div <= '1';
    else
        if count = 9999999 then
            en_div <= not en_div;
            count := 0;
        else
            count := count + 1;
        end if;
    end if;
end if;
end process;

process(ck)
type db_state is (not_rdy, rdy, pulse);
variable db_ns: db_state;
begin
    if ck='1' and ck'event then
        case db_ns is
        when not_rdy => en <= '0';
            if btn1 = '1' then
                db_ns := rdy;
            end if;
        when rdy => en <= '0';
            if btn0 = '1' then
                db_ns := pulse;
            end if;
        when pulse => en <= '1';
            db_ns := not_rdy;
        when others => null;
        end case;
    end if;
end process;
end Behavioral;
