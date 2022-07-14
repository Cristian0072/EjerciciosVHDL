-- Create Date:    18:11:00 07/12/2022 
-- Design Name: 
-- Module Name:    Registro_4Bits - Behavioral 
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Registro_4Bits is
    Port ( clk,RST,D,I : in  STD_LOGIC;
			  DE: in STD_LOGIC_VECTOR(0 to 3);
			  S: in STD_LOGIC_VECTOR(0 to 1);
           Q : inout  STD_LOGIC_VECTOR(0 to 3));
end Registro_4Bits;

architecture Behavioral of Registro_4Bits is

begin
process(clk,RST,D,I)begin
if(clk'event and clk='1')then
	if(RST='1')then
		Q<="0000";
	elsif(S="00")then
		Q<=Q;
	elsif(S="01")then
		Q(3)<=Q(2);
		Q(2)<=Q(1);
		Q(1)<=Q(0);
		Q(0)<=I;
	elsif(S="11")then
		Q(0)<=Q(1);
		Q(1)<=Q(2);
		Q(2)<=Q(3);
		Q(3)<=D;
	elsif(S="10")then
		Q<=DE;
	end if;
end if;
end process;
end Behavioral;