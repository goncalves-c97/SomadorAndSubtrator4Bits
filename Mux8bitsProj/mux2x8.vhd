----------------------------------------------------------------------------------
-- Company: Faculdade Engenheiro Salvador Arena
--
-- Engineers: Carlos Adonias
--			  	  Carlos Gonçalves
--			 	  Gabriel Teixeira
-- 		 	  Johnny Messias
--
-- Teacher: Filippo Valiante
-- Create Date:    22:38:32 22/03/2023 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2x8 is
    Port 
	 ( 
		E0 : in  STD_LOGIC_VECTOR (7 downto 0);
		E1 : in  STD_LOGIC_VECTOR (7 downto 0);
      S : out  STD_LOGIC_VECTOR (7 downto 0);
		SEL : in  STD_LOGIC
	  );
end mux2x8;

architecture Behavioral of mux2x8 is
	
begin
	S <= E0 when (SEL = '0') else E1;
end Behavioral;

