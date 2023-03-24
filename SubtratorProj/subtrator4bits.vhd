----------------------------------------------------------------------------------
-- Company: Faculdade Engenheiro Salvador Arena
--
-- Engineers: Carlos Adonias
--			  	  Carlos Gonçalves
--			 	  Gabriel Teixeira
-- 		 	  Johnny Messias
--
-- Teacher: Filippo Valiante
-- Create Date:    19:55:38 24/03/2023
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.NUMERIC_STD.all;

entity subtrator4bits is
    port (A, B: in STD_LOGIC_VECTOR(3 downto 0);
          SUB: out STD_LOGIC_VECTOR(3 downto 0);
          CARRY: out STD_LOGIC;
			 OVERFLOW: out STD_LOGIC;
			 ZERO: out STD_LOGIC;
			 NEGATIVE: out STD_LOGIC
			 );
end entity subtrator4bits;

architecture Behavioral of subtrator4bits is

signal TEMP_SUB : STD_LOGIC_VECTOR(3 downto 0);

begin
    process(A, B)
    begin
        TEMP_SUB <= A - B;
		  SUB <= TEMP_SUB;
		  
		  if A < B  then
				NEGATIVE <= '1';
		  else 
				NEGATIVE <= '0';
		  end if;
		  
		  if TEMP_SUB = 0 then
				ZERO <= '1';
		  else
				ZERO <= '0';
		  end if;
		  
		  OVERFLOW <= '0';
		  CARRY <= '0';
    end process;
end architecture Behavioral;