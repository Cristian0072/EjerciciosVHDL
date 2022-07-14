-- Create Date:    22:39:21 07/13/2022 
-- Design Name: 
-- Module Name:    Controlador_0_9 - Behavioral 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Controlador_0_9 is
    Port ( clk,C : in  STD_LOGIC;
           Q : inout  STD_LOGIC_VECTOR (3 downto 0);
           SAL0,SAL1 : out  STD_LOGIC);
end Controlador_0_9;

architecture Behavioral of Controlador_0_9 is

begin
process(clk,C)begin
if(clk'event and clk='1')then
	if(C='0')then
		Q<=Q+1;
		if(Q="1001")then
			Q<="0000";
		end if;
	else
		Q<=Q-1;
		if(Q="0000")then
			Q<="1001";
		end if;
	end if;
end if;
end process;
process(q)begin
case Q is
when "0000"=>
	if(C='0')then
	SAL0<='1';
	SAL1<='0';
	else
	SAL0<='0';
	SAL1<='0';
	end if;
when "0001"=>
	if(C='0')then
	SAL0<='0';
	SAL1<='0';
	else
	SAL0<='0';
	SAL1<='1';
	end if;
when "0010"=>
	if(C='0')then
	SAL0<='1';
	SAL1<='0';
	else
	SAL0<='0';
	SAL1<='0';
	end if;
when "0011"=>
	if(C='0')then
	SAL0<='0';
	SAL1<='0';
	else
	SAL0<='0';
	SAL1<='1';
	end if;
when "0100"=>
	if(C='0')then
	SAL0<='1';
	SAL1<='0';
	else
	SAL0<='0';
	SAL1<='0';
	end if;
when "0101"=>
	if(C='0')then
	SAL0<='0';
	SAL1<='0';
	else
	SAL0<='0';
	SAL1<='1';
	end if;
when "0110"=>
	if(C='0')then
	SAL0<='1';
	SAL1<='0';
	else
	SAL0<='0';
	SAL1<='0';
	end if;
when "0111"=>
	if(C='0')then
	SAL0<='0';
	SAL1<='0';
	else
	SAL0<='0';
	SAL1<='1';
	end if;
when "1000"=>
	if(C='0')then
	SAL0<='1';
	SAL1<='0';
	else
	SAL0<='0';
	SAL1<='0';
	end if;
when "1001"=>
	if(C='0')then
	SAL0<='0';
	SAL1<='0';
	else
	SAL0<='0';
	SAL1<='1';
	end if;
when others =>
	SAL0<='0';
	SAL1<='0';
end case;
end process;
end Behavioral;