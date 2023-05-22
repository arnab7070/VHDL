library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity full_adder2 is
    Port ( I : in  STD_LOGIC_VECTOR (2 downto 0);
           Y : out  STD_LOGIC_VECTOR (1 downto 0));
end full_adder2;

architecture Behavioral of full_adder2 is

begin
Y(0) <= I(0) xor I(1) xor I(2);
Y(1) <= (I(2) and ((I(0) xor I(1)) or (I(0) and I(1))));
end Behavioral;