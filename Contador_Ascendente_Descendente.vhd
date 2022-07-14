-- Create Date:    22:21:10 07/13/2022 
-- Design Name: 
-- Module Name:    Contador_Ascendente_Descendente - Behavioral 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Contador_Ascendente_Descendente is
    Port ( clk,X : in  STD_LOGIC;
           Z0,Z1 : out  STD_LOGIC;
           Q : inout  STD_LOGIC_VECTOR (3 downto 0));
end Contador_Ascendente_Descendente;

architecture Behavioral of Contador_Ascendente_Descendente is
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
process(Q) begin
case Q is
when"0000"=>
	Z0<='1';
	Z1<='0';
when"0001"=>
	Z0<='0';
	Z1<='1';
when"0010"=>
	Z0<='1';
	Z1<='0';
when"0011"=>
	Z0<='0';
	Z1<='1';
when"0100"=>
	Z0<='1';
	Z1<='0';
when"0101"=>
	Z0<='0';
	Z1<='1';
when"0110"=>
	Z0<='1';
	Z1<='0';
when"0111"=>
	Z0<='0';
	Z1<='1';
when"1000"=>
	Z0<='1';
	Z1<='0';
when"1001"=>
	Z0<='0';
	Z1<='1';
when"1010"=>
	Z0<='1';
	Z1<='0';
when"1011"=>
	Z0<='0';
	Z1<='1';
when"1100"=>
	Z0<='1';
	Z1<='0';
when"1101"=>
	Z0<='0';
	Z1<='1';
when"1110"=>
	Z0<='1';
	Z1<='0';
when others =>
	Z0<='0';
	Z1<='1';
end case;
end process;
end Behavioral;