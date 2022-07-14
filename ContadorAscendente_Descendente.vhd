-- Create Date:    22:09:55 07/13/2022 
-- Design Name: 
-- Module Name:    ContadorAscendente_Descendente - Behavioral 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity ContadorAscendente_Descendente is
    Port ( clk,X : in  STD_LOGIC;
           Q : inout  STD_LOGIC_VECTOR (1 downto 0));
end ContadorAscendente_Descendente;

architecture Behavioral of ContadorAscendente_Descendente is
begin
process(clk,X)begin
if(clk'event and clk='1')then
	if(X='0')then
	Q<=Q+1;
	else
	Q<=Q-1;
	end if;
end if;
end process;
end Behavioral;