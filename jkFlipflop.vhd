library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity JKFlipFlop is
    Port ( clk : in  STD_LOGIC;
           J : in  STD_LOGIC;
           K : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qb : out  STD_LOGIC);
end JKFlipFlop;

architecture Behavioral of JKFlipFlop is
signal sig:std_logic:='0';
begin
process(clk, J, K)
	begin
		if(clk'event and clk='1') then 
			if(J='0' and K='0') then
				sig <= sig;
			elsif(J='0' and K='1') then
				sig <= '0';
			elsif(J='1' and K='0') then
				sig <= '1';
			else
				sig <= not(sig);
			end if;
		end if;
	end process;
Q <= sig;
Q <= not(sig);
end Behavioral;