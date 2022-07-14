-- Create Date:    12:48:12 07/14/2022 
-- Design Name: 
-- Module Name:    ContadorSecuencial_0_7 - Behavioral 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ContadorSecuencial_0_7 is
    Port ( clk,RST : in  STD_LOGIC;
           Q : inout  STD_LOGIC_VECTOR (2 downto 0));
end ContadorSecuencial_0_7;

architecture Behavioral of ContadorSecuencial_0_7 is
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

