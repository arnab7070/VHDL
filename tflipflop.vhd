library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity t_flip_flop is
    Port ( T : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           q : out  STD_LOGIC;
           qb : out  STD_LOGIC);
end t_flip_flop;
architecture Behavioral of t_flip_flop is
signal sig: std_logic:='0';
begin
	process(T,clk)
		begin
			if(clk'event and clk = '1')then
				if(T = '0')then
					sig <= sig;
				else
					sig <= not (sig);
				end if;
			end if;
		end process;
q <= sig;
qb <= not sig;
end Behavioral;