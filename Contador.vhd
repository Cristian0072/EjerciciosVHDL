-- Create Date:    18:15:59 07/12/2022 
-- Design Name: 
-- Module Name:    Contador - Behavioral 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Contador is
    Port ( clk,RST : in  STD_LOGIC;
           Q: out  STD_LOGIC_VECTOR(2 downto 0));
end Contador;

architecture Behavioral of Contador is
signal a: std_logic_vector(2 downto 0):="000";
begin
process(clk)begin
	if(clk'event and clk='1')then
		a<=a+1;
	if(a="101"or RST='1')then
		a<="001";
	end if;
	end if;
end process;
process(a)begin
	case a is
		when"001"=>Q<="000";
		when"010"=>Q<="001";
		when"011"=>Q<="011";
		when"100"=>Q<="101";
		when others =>Q<="000";
	end case;
end process;
end Behavioral;

