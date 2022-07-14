-- Create Date:    10:50:51 07/14/2022 
-- Design Name: 
-- Module Name:    Registro_DesplazamientoSerie - Behavioral 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity Registro_DesplazamientoSerie is
port(clk,MC: in std_logic;
	  S:inout std_logic;
	  Q: out std_logic_vector(3 downto 0));
end Registro_DesplazamientoSerie;

architecture Behavioral of Registro_DesplazamientoSerie is
signal a:std_logic_vector(2 downto 0):="000";
begin
process(clk)begin
if(clk'event and clk='0')then
	a<=a+1;
	if(a="110")then
		a<="000";
	end if;
end if;
end process;
process(a)begin
case a is
	when"001"=>
	if(MC='0')then
	S<='1';
	Q<="0000";
	elsif(MC='1')then
	S<='0';
	Q<="0000";
	end if;
	when"010"=>
	if(MC='0')then
	S<='0';
	Q<="1000";
	elsif(MC='1')then
	S<='0';
	Q<="0000";
	end if;
	when"011"=>
	if(MC='0')then
	S<='0';
	Q<="0100";
	elsif(MC='1')then
	S<='0';
	Q<="0000";
	end if;
	when"100"=>
	if(MC='0')then
	S<='1';
	Q<="0010";
	elsif(MC='1')then
	S<='0';
	Q<="0000";
	end if;
	when"101"=>
	if(MC='0')then
	S<='1';
	Q<="0001";
	elsif(MC='1')then
	S<='0';
	Q<="0000";
	end if;
	when others =>S<='0';
	Q<="0000";
end case;
end process;
end Behavioral;