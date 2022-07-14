-- Create Date:    18:17:42 07/12/2022 
-- Design Name: 
-- Module Name:    Cronometro - Behavioral 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Cronometro is
	port(clk:in std_logic;
		  dec,uni: inout std_logic_vector(3 downto 0);
		  seg0,seg1: out std_logic_vector(6 downto 0));
end Cronometro;

architecture Behavioral of Cronometro is
begin
process(clk)begin
if(clk'event and clk='1')then
	uni<=uni+1;
	if(uni="1001")then
		uni<="0000";
		dec<=dec+1;
		if(dec="1001")then
			dec<="0000";
		end if;
	end if;
end if;
end process;
process (uni)begin
case uni is
--0
when"0000"=>seg0<="1111110";
--1
when"0001"=>seg0<="0110000";
--2
when"0010"=>seg0<="1101101";
--3
when"0011"=>seg0<="1111001";
--4
when"0100"=>seg0<="0110011";
--5
when"0101"=>seg0<="1010011";
--6
when"0110"=>seg0<="1011111";
--7
when"0111"=>seg0<="1110001";
--8
when"1000"=>seg0<="1111111";
--9
when"1001"=>seg0<="1110011";
when others=>seg0<="1111110";
end case;
end process;
process(dec) begin
case dec is
--0
when"0000"=>seg1<="1111110";
--1
when"0001"=>seg1<="0110000";
--2
when"0010"=>seg1<="1101101";
--3
when"0011"=>seg1<="1111001";
--4
when"0100"=>seg1<="0110011";
--5
when"0101"=>seg1<="1010011";
--6
when"0110"=>seg1<="1011111";
--7
when"0111"=>seg1<="1110001";
--8
when"1000"=>seg1<="1111111";
--9
when"1001"=>seg1<="1110011";
when others=>seg1<="1111110";
end case;
end process;
end Behavioral;