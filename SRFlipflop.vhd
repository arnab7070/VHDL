library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity SRFF is
    Port ( clk : in  STD_LOGIC;
           S : in  STD_LOGIC;
           R : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           QB : out  STD_LOGIC);
end SRFF;

architecture Behavioral of SRFF is
signal sig : std_logic:='0';
begin
process(clk)
	begin
		if rising_edge(clk) then
			if(S='0' and R='0') then
				sig <= sig;
			elsif(S='0' and R='1') then
				sig <= '0';
			elsif(S='1' and R='0') then
				sig <= '1';
			else 
				sig <= 'X';
			end if;
		end if;
	end process;
Q <= sig;
QB <= not sig;
end Behavioral;