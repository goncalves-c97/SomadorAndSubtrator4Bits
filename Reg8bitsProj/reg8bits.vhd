----------------------------------------------------------------------------------
-- Company: Faculdade Engenheiro Salvador Arena
--
-- Engineers: Carlos Adonias
--			  	  Carlos Gonçalves
--			 	  Gabriel Teixeira
-- 		 	  Johnny Messias
--
-- Teacher: Filippo Valiante
-- Create Date:    22:30:50 22/03/2023 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity reg8bits is
    Port ( INPUT : in  STD_LOGIC_VECTOR (7 downto 0);
           OUTPUT : out  STD_LOGIC_VECTOR (7 downto 0);
           EN : in  STD_LOGIC;
           CLR : in  STD_LOGIC;
           CLK : in  STD_LOGIC);
end reg8bits;

architecture Behavioral of reg8bits is

begin
-- CLK event
	process (CLK)
		begin
		if CLK' event and CLK='1' then
			if CLR='1' then
				OUTPUT <= "00000000";
			elsif EN='1' then
				OUTPUT <= INPUT;
			end if;
		end if;
	end process;
end Behavioral;

