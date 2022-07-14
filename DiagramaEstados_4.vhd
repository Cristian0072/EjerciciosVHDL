-- Create Date:    13:15:28 07/14/2022 
-- Design Name: 
-- Module Name:    DiagramaEstados_4 - Behavioral 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DiagramaEstados_4 is
    Port ( clk,X : in  STD_LOGIC;
           Z : out  STD_LOGIC);
end DiagramaEstados_4;

architecture Behavioral of DiagramaEstados_4 is
type estados is(A,B,C,D);
signal edo_pres,edo_fut:estados;
begin
proceso:process(edo_pres,X)begin
case edo_pres is
	when A=>Z<='1';
	if(X='1')then
		edo_fut<=B; 
	else
		edo_fut<=D; 
	end if;
	when B=>Z<='0';
		if(X='1')then
		edo_fut<=C;
		else
		edo_fut<=D;
		end if;
	when C=>Z<='0';
		if(X='1')then
			edo_fut<=B;
		else
			edo_fut<=D;
		end if;
	when D=>Z<='0';
		if(X='1')then
			edo_fut<=A;
		else
			edo_fut<=D;
		end if;
end case;
end process;
end Behavioral;