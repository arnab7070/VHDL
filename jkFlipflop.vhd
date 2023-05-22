library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity JKFlipFlop is
    Port (
        clk : in  STD_LOGIC;
        J   : in  STD_LOGIC;
        K   : in  STD_LOGIC;
        Q   : out STD_LOGIC;
        QB  : out STD_LOGIC
    );
end JKFlipFlop;

architecture Behavioral of JKFlipFlop is
    signal sig : std_logic := '0';
begin
    process (clk)
    begin
        if rising_edge(clk) then
            if (J = '0' and K = '0') then
                sig <= sig;
            elsif (J = '0' and K = '1') then
                sig <= '0';
            elsif (J = '1' and K = '0') then
                sig <= '1';
            else
                sig <= not sig;
            end if;
        end if;
    end process;

    Q  <= sig;
    QB <= not sig;
end Behavioral;
