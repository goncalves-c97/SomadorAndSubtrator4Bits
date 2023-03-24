----------------------------------------------------------------------------------
-- Company: Faculdade Engenheiro Salvador Arena
--
-- Engineers: Carlos Adonias
--			  	  Carlos Gonçalves
--			 	  Gabriel Teixeira
-- 		 	  Johnny Messias
--
-- Teacher: Filippo Valiante
-- Create Date:    24/03/2023 19:13:41
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.NUMERIC_STD.all;

entity somador4bits is
    port (A, B: in STD_LOGIC_VECTOR(3 downto 0);
          -- CARRY_IN: in STD_LOGIC_VECTOR;
          SOMA: out STD_LOGIC_VECTOR(3 downto 0);
          CARRY: out STD_LOGIC;
			 OVERFLOW: out STD_LOGIC;
			 ZERO: out STD_LOGIC;
			 NEGATIVE: out STD_LOGIC);
end entity somador4bits;

architecture Behavioral of somador4bits is

signal TEMP_SUM   : STD_LOGIC_VECTOR(3 downto 0);

begin
    process(A, B)
    begin
        TEMP_SUM <= A + B;
		  SOMA <= TEMP_SUM;
		  
		  if TEMP_SUM > "1111" then
				CARRY <= '1';
		  else 
				CARRY <= '0';
		  end if;
		  
		  if TEMP_SUM = 0 then
				ZERO <= '1';
		  else
				ZERO <= '0';
		  end if;
		  
		  OVERFLOW <= '0';
		  NEGATIVE <= '0';
		  
    end process;
end architecture Behavioral;
