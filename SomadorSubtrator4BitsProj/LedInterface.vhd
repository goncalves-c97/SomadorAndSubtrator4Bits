----------------------------------------------------------------------------------
-- Company: Faculdade Engenheiro Salvador Arena
--
-- Engineers: Carlos Adonias
--			  	  Carlos Gonalves
--			 	  Gabriel Teixeira
-- 		 	  Johnny Messias
--
-- Teacher: Filippo Valiante
-- Create Date:    19:43:37 23/03/2023 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LedInterface is
	Port 
	 ( 
		SEL : in STD_LOGIC_VECTOR (3 downto 0);
		DISP : out STD_LOGIC_VECTOR (3 downto 0)
	  );
end LedInterface;

architecture Behavioral of LedInterface is

begin

with SEL SELECT
			DISP <=   "0000" WHEN "0000",
						 "0001" WHEN "0001",
						 "0010" WHEN "0010",
						 "0011" WHEN "0011",
						 "0100" WHEN "0100",
						 "0101" WHEN "0101",
						 "0110" WHEN "0110",
						 "0111" WHEN "0111",
						 "1000" WHEN "1000",
						 "1001" WHEN "1001",
						 "1010" WHEN "1010",
						 "1011" WHEN "1011",
						 "1100" WHEN "1100",
						 "1101" WHEN "1101",
						 "1110" WHEN "1110",				 
						 "1111" WHEN OTHERS;
end Behavioral;