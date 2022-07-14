-- Create Date:    08:22:31 07/14/2022 
-- Design Name: 
-- Module Name:    DiagramaEstados - Behavioral 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DiagramaEstados is
    Port ( clk,X : in  STD_LOGIC;
           Z : out  STD_LOGIC_VECTOR (2 downto 0));
end DiagramaEstados;

architecture Behavioral of DiagramaEstados is
type estados is(A,B,C,D,E,F,G,H);
signal edo_pres,edo_fut:estados;
begin
proceso:process(edo_pres,X)begin
case edo_pres is
	when A=>Z<="000";
	if(X='1')then
		edo_fut<=B; 
	else
		edo_fut<=H; 
	end if;
	when B=>Z<="001";
		if(X='1')then
		edo_fut<=C;
		else
		edo_fut<=A;
		end if;
	when C=>Z<="011";
		if(X='1')then
			edo_fut<=D;
		else
			edo_fut<=B;
		end if;
	when D=>Z<="010";
		if(X='1')then
			edo_fut<=E;
		else
			edo_fut<=C;
		end if;
	when E=>Z<="110";
		if(X='1')then
			edo_fut<=F;
		else
			edo_fut<=D;
		end if;
	when F=>Z<="111";
		if(X='1')then
			edo_fut<=G;
		else
			edo_fut<=E;
		end if;
	when G=>Z<="101";
		if(X='1')then
			edo_fut<=H;
		else
			edo_fut<=F;
		end if;
	when H=>Z<="110";
		if(X='1')then
			edo_fut<=A;
		else
			edo_fut<=G;
		end if;
end case;
end process;
proceso2:process(clk)begin
	if(clk'event and clk='1')then
		edo_pres<=edo_fut;
	end if;
end process;
end Behavioral;

