-- Create Date:    18:07:09 07/12/2022 
-- Design Name: 
-- Module Name:    FlipFlop_T - Behavioral 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity FlipFlop_T is
    Port ( T,clk : in  STD_LOGIC;
           Q,Q0 : inout  STD_LOGIC);
end FlipFlop_T;

architecture Behavioral of FlipFlop_T is
signal aux: std_logic:='0';
begin
Q<=aux;
process(clk) begin
	if(clk'event and clk='1')then
		If(T='1')then
		Q0<=not Q;
		end if;
	end if;
end process;
end Behavioral;