-- Create Date:    18:04:47 07/12/2022 
-- Design Name: 
-- Module Name:    FlipFlop_JK - Behavioral 
----------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FlipFlop_JK is
    Port ( clk,J,K: in  STD_LOGIC;
           Q0,Q: inout  STD_LOGIC);
end FlipFlop_JK;

architecture Behavioral of FlipFlop_JK is
begin
process(clk)
begin
	if(clk'event and clk='1')then 
		if(J='0' and K='1')then
		Q<=Q;
		Q0<=Q0;
		elsif(J='1' and k='0')then
		Q<='1';
		Q0<='0';
		elsif(J='0'and K='1') then
		Q<='0';
		Q0<='1';
		else
		Q<=not Q;
		Q0<=not Q0;
		end if;
	end if;
end process;
end Behavioral;

