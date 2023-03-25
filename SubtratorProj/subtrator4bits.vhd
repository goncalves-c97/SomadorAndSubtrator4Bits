----------------------------------------------------------------------------------
-- Company: Faculdade Engenheiro Salvador Arena
--
-- Engineers: Carlos Adonias
--			  	  Carlos Gonalves
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

signal TEMP_SUB : STD_LOGIC_VECTOR(3 downto 0); -- Variável para guardar a subtração

begin
	     TEMP_SUB <= A - B; -- Realiza a subtração
		  SUB <= TEMP_SUB;   -- Registra o resultado no subtrator
		  NEGATIVE <= '1' WHEN (UNSIGNED(A) < UNSIGNED(B)) ELSE '0'; -- O negativo acontece quando A for menor que B
		  ZERO <= '1' WHEN TEMP_SUB = "0000" ELSE '0';
		  OVERFLOW <= '0';
		  CARRY <= '0';
end architecture Behavioral;