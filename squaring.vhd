library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity squring is
    Port ( I : in  STD_LOGIC_VECTOR (2 downto 0);
           output : out  STD_LOGIC_VECTOR (5 downto 0));
end squring;
architecture Behavioral of squring is
begin
process(I)
	begin
		case I is
			when "000" => output <= "000000";
         when "001" => output <= "000001";
         when "010" => output <= "000100";
         when "011" => output <= "001001";
         when "100" => output <= "010000";
         when "101" => output <= "011001";
         when "110" => output <= "100100";
         when others => output <= "110001";
		end case;
	end process;
end Behavioral;