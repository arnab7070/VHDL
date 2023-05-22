library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity andGate is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : out  STD_LOGIC);
end andGate;

architecture Behavioral of andGate is
begin
process(a,b)
	begin
	if(a='0' and b='0')then
	c <= '0';
	elsif(a='0' and b='1')then
	c <= '0';
	elsif(a='1' and b='0')then
	c <= '0';
	else c <= '1';
	end if;
	end process;
end Behavioral;