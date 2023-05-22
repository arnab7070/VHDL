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