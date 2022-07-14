-- Create Date:    22:01:37 07/13/2022 
-- Design Name: 
-- Module Name:    ContadorSecuencia - Behavioral 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ContadorSecuencia is
    Port ( clk,RST : in  STD_LOGIC;
           Q : inout  STD_LOGIC_VECTOR (2 downto 0));
end ContadorSecuencia;

architecture Behavioral of ContadorSecuencia is
begin
process(clk,RST)begin
if(clk'event and clk='1')then
	if(Q="111" or RST='0')then
	Q<="000";
	else
	Q<=Q+1;
	end if;
end if;
end process;
end Behavioral;

