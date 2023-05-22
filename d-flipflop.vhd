library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity D_FF_VHDL is
    Port ( D : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           QB : out  STD_LOGIC);
end D_FF_VHDL;

architecture Behavioral of D_FF_VHDL is
begin
process(CLK,RST,D)
begin
if(RST='1')then
Q<='0'; QB<='1';
elsif(CLK'event and CLK='1')then
Q<=d;QB<=not(d);
end if;
end process;
end Behavioral;