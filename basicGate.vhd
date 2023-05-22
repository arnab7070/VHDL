library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity basicGates is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           Y : out  STD_LOGIC);
end basicGates;
architecture Behavioral of basicGates is
begin
Y <= (c and ((a xor b) or (not a)));
end Behavioral;