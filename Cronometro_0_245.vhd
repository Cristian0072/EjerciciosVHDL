-- Create Date:    07:37:43 07/14/2022 
-- Design Name: 
-- Module Name:    Cronometro_0_245 - Behavioral 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity Cronometro_0_245 is
    Port ( clk : in  STD_LOGIC;
           cen,dec,uni : inout  STD_LOGIC_VECTOR (3 downto 0);
           seg1,seg2,seg3 : out  STD_LOGIC_VECTOR (6 downto 0));
end Cronometro_0_245;

architecture Behavioral of Cronometro_0_245 is

begin
process(clk)begin
if(clk'event and clk='1')then
	cen<="0000";
	dec<="0000";
	uni<="0000";
else
	uni<=uni+1;
	if(uni="1001")then
		uni<="0000";
		dec<=dec+1;
		if(dec="1001")then
		dec<="0000";
		cen<=cen+1;
		end if;
	end if;
end if;
end process;
process(uni)begin
case uni is
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
when others =>seg1<="1111110";
end case;
end process;
--dec
process(dec)begin
case dec is
--0
when"0000"=>seg2<="1111110";
--1
when"0001"=>seg2<="0110000";
--2
when"0010"=>seg2<="1101101";
--3
when"0011"=>seg2<="1111001";
--4
when"0100"=>seg2<="0110011";
--5
when"0101"=>seg2<="1010011";
--6
when"0110"=>seg2<="1011111";
--7
when"0111"=>seg2<="1110001";
--8
when"1000"=>seg2<="1111111";
--9
when"1001"=>seg2<="1110011";
when others =>seg2<="1111110";
end case;
end process;
--cen
process(cen)begin
case cen is
--0
when"0000"=>seg3<="1111110";
--1
when"0001"=>seg3<="0110000";
--2
when"0010"=>seg3<="1101101";
--3
when"0011"=>seg3<="1111001";
--4
when"0100"=>seg3<="0110011";
--5
when"0101"=>seg3<="1010011";
--6
when"0110"=>seg3<="1011111";
--7
when"0111"=>seg3<="1110001";
--8
when"1000"=>seg3<="1111111";
--9
when"1001"=>seg3<="1110011";
when others =>seg3<="1111110";
end case;
end process;
end Behavioral;

