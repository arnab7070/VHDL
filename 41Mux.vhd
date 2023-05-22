library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity MUX_41_Module is
    Port ( S : in  STD_LOGIC_VECTOR (1 downto 0);
           I : in  STD_LOGIC_VECTOR (3 downto 0);
           Y : out  STD_LOGIC);
end MUX_41_Module;

architecture Behavioral of MUX_41_Module is
begin
Y <= (I(0) and (not S(1)) and (not S(0))) 
or (I(1) and (not S(1)) and (S(0))) 
or (I(2) and (S(1)) and (not S(0))) 
or (I(3) and (S(1)) and (S(0)));
end Behavioral;



Another Method


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity mux41 is
    Port ( I : in  STD_LOGIC_VECTOR (3 downto 0);
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           Y : out  STD_LOGIC);
end mux41;

architecture Behavioral of mux41 is

begin
process (S,I)
begin
	case S is
		when "00" => Y <= I(0);
		when "01" => Y <= I(1);
		when "10" => Y <= I(2);
		when others => Y <= I(3);
	end case;
end process;
end Behavioral;