library IEEE;
use IEEE.STD_LOGIC_1164.ALL, work.p1_pack.all;

entity adder is
Generic(k: natural := 4);
Port(
    a,b: in std_logic_vector(k-1 downto 0);
    C: out std_logic_vector(k-1 downto 0);
    C_out: out std_logic;
    Go, reset, ck: in std_logic
);
end adder;

architecture struc of adder is

component serial_adder
    generic(n: natural :=2);
    port(a,b,ck,reset: in std_logic;
        s: out std_logic_vector(n-1 downto 0);
        c_out, done: out std_logic);
end component;

component sh_reg
    generic(n: natural :=4);
    port(
        x: in std_logic_vector(n-1 downto 0);
        z: out std_logic;
        sel: in std_logic;
        ck: in std_logic);
end component;

component control
    port(
        go,ck,reset,done: in std_logic;
        sel: out std_logic;
        reset_sadder: out std_logic);
end component;

signal sel: sh_reg_sel;
signal a_bit, b_bit, done, reset_sadder: std_logic;
begin

s_adder: serial_adder
generic map(k)
port map(a_bit, b_bit, ck, reset_sadder, c, c_out, done);

reg_A: sh_reg
generic map(k)
port map(a,a_bit,sel,ck);

reg_B: sh_reg
generic map(k)
port map(b, b_bit, sel, ck);

ctrl: control
port map(Go,ck, reset, done, sel, reset_sadder);

end struc;
