-- Create Date:    18:14:01 07/12/2022 
-- Design Name: 
-- Module Name:    Semaforo - Behavioral 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity Semaforo is
    Port ( clk,MC: in  STD_LOGIC;
			  Q:inout STD_LOGIC_VECTOR(5 downto 0);
			  EO,NoSu: out  STD_LOGIC_VECTOR(2 downto 0));
end Semaforo;

architecture Behavioral of Semaforo is

begin
process(clk)begin
if(clk'event and clk='0')then
	Q<=Q+1;
	if(Q="110011")then
		Q<="000001";
	end if;
end if;
end process;
process(Q)begin
case Q is
	--1
	when "000001"=>
	if(MC='0')then
		NoSu<="100";
		EO<="001";
	elsif(MC='1')then
		NoSu<="000";
		EO<="000";	end if;
	--2
	when "000010"=>
	if(MC='0')then
		NoSu<="100";
		EO<="001";
	elsif(MC='1')then
		NoSu<="000";
		EO<="000";	end if;
	--3
	when "000011"=>
	if(MC='0')then
		NoSu<="100";
		EO<="001";
	elsif(MC='1')then
		NoSu<="000";
		EO<="000";	end if;
	--4
	when "000100"=>
	if(MC='0')then
		NoSu<="100";
		EO<="001";
	elsif(MC='1')then
		NoSu<="000";
		EO<="000";	end if;
	--5
	when "000101"=>
	if(MC='0')then
		NoSu<="100";
		EO<="001";
	elsif(MC='1')then
		NoSu<="000";
		EO<="000";	end if;
	--6
	when "000110"=>
	if(MC='0')then
		NoSu<="100";
		EO<="001";
	elsif(MC='1')then
		NoSu<="000";
		EO<="000";	end if;
	--7
	when "000111"=>
	if(MC='0')then
		NoSu<="100";
		EO<="001";
	elsif(MC='1')then
		NoSu<="000";
		EO<="000";	end if;
	--8
	when "001000"=>
	if(MC='0')then
		NoSu<="100";
		EO<="001";
	elsif(MC='1')then
		NoSu<="000";
		EO<="000";	end if;
	--9
	when "001001"=>
	if(MC='0')then
		NoSu<="100";
		EO<="001";
	elsif(MC='1')then
		NoSu<="000";
		EO<="000";	end if;
	--10
	when "001010"=>
	if(MC='0')then
		NoSu<="100";
		EO<="001";
	elsif(MC='1')then
		NoSu<="000";
		EO<="000";	end if;
	--11
	when "001011"=>
	if(MC='0')then
		NoSu<="100";
		EO<="001";
	elsif(MC='1')then
		NoSu<="000";
		EO<="000";	end if;
	--12
	when "001100"=>
	if(MC='0')then
		NoSu<="100";
		EO<="001";
	elsif(MC='1')then
		NoSu<="000";
		EO<="000";	end if;
	--13
	when "001101"=>
	if(MC='0')then
		NoSu<="100";
		EO<="001";
	elsif(MC='1')then
		NoSu<="000";
		EO<="000";	end if;
	--14
	when "001110"=>
	if(MC='0')then
		NoSu<="100";
		EO<="001";
	elsif(MC='1')then
		NoSu<="000";
		EO<="000";	end if;
	--15
	when "001111"=>
	if(MC='0')then
		NoSu<="100";
		EO<="001";
	elsif(MC='1')then
		NoSu<="000";
		EO<="000";	end if;
	--16
	when "010000"=>
	if(MC='0')then
		NoSu<="100";
		EO<="001";
	elsif(MC='1')then
		NoSu<="000";
		EO<="000";	end if;
	--17
	when "010001"=>
	if(MC='0')then
		NoSu<="100";
		EO<="001";
	elsif(MC='1')then
		NoSu<="000";
		EO<="000";
	end if;
	--18
	when "010010"=>
	if(MC='0')then
		NoSu<="100";
		EO<="001";
	elsif(MC='1')then
		NoSu<="000";
		EO<="000";
	end if;
	--19
	when "010011"=>
	if(MC='0')then
		NoSu<="100";
		EO<="001";
	elsif(MC='1')then
		NoSu<="000";
		EO<="000";
	end if;
	--20
	when "010100"=>
	if(MC='0')then
		NoSu<="100";
		EO<="001";
	elsif(MC='1')then
		NoSu<="000";
		EO<="000";
	end if;
	--21
	when "010101"=>
	if(MC='0')then
		NoSu<="100";
		EO<="010";
	elsif(MC='1')then
		NoSu<="000";
		EO<="000";
	end if;
	--22
	when "010110"=>
	if(MC='0')then
		NoSu<="100";
		EO<="010";
	elsif(MC='1')then
		NoSu<="000";
		EO<="000";
	end if;
	--23
	when "010111"=>
	if(MC='0')then
		NoSu<="100";
		EO<="010";
	elsif(MC='1')then
		NoSu<="000";
		EO<="000";
	end if;
	--24
	when "011000"=>
	if(MC='0')then
		NoSu<="100";
		EO<="010";
	elsif(MC='1')then
		NoSu<="000";
		EO<="000";
	end if;
	--25
	when "011001"=>
	if(MC='0')then
		NoSu<="100";
		EO<="010";
	elsif(MC='1')then
		NoSu<="000";
		EO<="000";
	end if;
	--26
	when "011010"=>
	if(MC='0')then
		NoSu<="001";
		EO<="100";
	elsif(MC='1')then
		NoSu<="000";
		EO<="000";
	end if;
	--27
	when "011011"=>
	if(MC='0')then
		NoSu<="001";
		EO<="100";
	elsif(MC='1')then
		NoSu<="000";
		EO<="000";
	end if;
	--28
	when "011100"=>
	if(MC='0')then
		NoSu<="001";
		EO<="100";
	elsif(MC='1')then
		NoSu<="000";
		EO<="000";
	end if;
	--29
	when "011101"=>
	if(MC='0')then
		NoSu<="001";
		EO<="100";
	elsif(MC='1')then
		NoSu<="000";
		EO<="000";
	end if;
	--30
	when "011110"=>
	if(MC='0')then
		NoSu<="001";
		EO<="100";
	elsif(MC='1')then
		NoSu<="000";
		EO<="000";
	end if;
	--31
	when "011111"=>
	if(MC='0')then
		NoSu<="001";
		EO<="100";
	elsif(MC='1')then
		NoSu<="000";
		EO<="000";
	end if;
	--32
	when "100000"=>
	if(MC='0')then
		NoSu<="001";
		EO<="100";
	elsif(MC='1')then
		NoSu<="000";
		EO<="000";
	end if;
	--33
	when "100001"=>
	if(MC='0')then
		NoSu<="001";
		EO<="100";
	elsif(MC='1')then
		NoSu<="000";
		EO<="000";
	end if;
	--34
	when "100010"=>
	if(MC='0')then
		NoSu<="001";
		EO<="100";
	elsif(MC='1')then
		NoSu<="000";
		EO<="000";
	end if;
	--35
	when "100011"=>
	if(MC='0')then
		NoSu<="001";
		EO<="100";
	elsif(MC='1')then
		NoSu<="000";
		EO<="000";
	end if;
	--36
	when "100100"=>
	if(MC='0')then
		NoSu<="001";
		EO<="100";
	elsif(MC='1')then
		NoSu<="000";
		EO<="000";
	end if;
	--37
	when "100101"=>
	if(MC='0')then
		NoSu<="001";
		EO<="100";
	elsif(MC='1')then
		NoSu<="000";
		EO<="000";
	end if;
	--38
	when "100110"=>
	if(MC='0')then
		NoSu<="001";
		EO<="100";
	elsif(MC='1')then
		NoSu<="000";
		EO<="000";
	end if;
	--39
	when "100111"=>
	if(MC='0')then
		NoSu<="001";
		EO<="100";
	elsif(MC='1')then
		NoSu<="000";
		EO<="000";
	end if;
	--40
	when "101000"=>
	if(MC='0')then
		NoSu<="001";
		EO<="100";
	elsif(MC='1')then
		NoSu<="000";
		EO<="000";
	end if;
	--41
	when "101001"=>
	if(MC='0')then
		NoSu<="001";
		EO<="100";
	elsif(MC='1')then
		NoSu<="000";
		EO<="000";
	end if;
	--42
	when "101010"=>
	if(MC='0')then
		NoSu<="001";
		EO<="100";
	elsif(MC='1')then
		NoSu<="000";
		EO<="000";
	end if;
	--43
	when "101011"=>
	if(MC='0')then
		NoSu<="001";
		EO<="100";
	elsif(MC='1')then
		NoSu<="000";
		EO<="000";
	end if;
	--44
	when "101100"=>
	if(MC='0')then
		NoSu<="001";
		EO<="100";
	elsif(MC='1')then
		NoSu<="000";
		EO<="000";
	end if;
	--45
	when "101101"=>
	if(MC='0')then
		NoSu<="001";
		EO<="100";
	elsif(MC='1')then
		NoSu<="000";
		EO<="000";
	end if;
	--46
	when "101110"=>
	if(MC='0')then
		NoSu<="010";
		EO<="100";
	elsif(MC='1')then
		NoSu<="000";
		EO<="000";
	end if;
	--47
	when "101111"=>
	if(MC='0')then
		NoSu<="010";
		EO<="100";
	elsif(MC='1')then
		NoSu<="000";
		EO<="000";
	end if;
	--48
	when "110000"=>
	if(MC='0')then
		NoSu<="010";
		EO<="100";
	elsif(MC='1')then
		NoSu<="000";
		EO<="000";
	end if;
	--49
	when "110001"=>
	if(MC='0')then
		NoSu<="010";
		EO<="100";
	elsif(MC='1')then
		NoSu<="000";
		EO<="000";
	end if;
	--50
	when "110010"=>
	if(MC='0')then
		NoSu<="010";
		EO<="100";
	elsif(MC='1')then
		NoSu<="000";
		EO<="000";
	end if;
	when others =>NoSu<="000";
		EO<="000";
end case;
end process;
end Behavioral;

