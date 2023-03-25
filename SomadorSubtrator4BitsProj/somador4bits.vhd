----------------------------------------------------------------------------------
-- Company: Faculdade Engenheiro Salvador Arena
--
-- Engineers: Carlos Adonias
--			  	  Carlos Gonalves
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
          SOMA: out STD_LOGIC_VECTOR(3 downto 0);
          CARRY: out STD_LOGIC;
			 OVERFLOW: out STD_LOGIC;
			 ZERO: out STD_LOGIC;
			 NEGATIVE: out STD_LOGIC);
end entity somador4bits;

architecture Behavioral of somador4bits is

signal TEMP_SUM   : STD_LOGIC_VECTOR(4 downto 0); -- Varivel para guardar a soma + o carry

begin
        TEMP_SUM <= ('0' & A) + ('0' & B); -- "Converte" A e B para 5 bits e realiza a soma
		  SOMA(0) <= TEMP_SUM(0); -- Registra o resultado da soma no somador
		  SOMA(1) <= TEMP_SUM(1); --
		  SOMA(2) <= TEMP_SUM(2); --
		  SOMA(3) <= TEMP_SUM(3); --
		  CARRY <= TEMP_SUM(4); -- 5 bit da varivel indica o carry
		  ZERO <= '1' WHEN TEMP_SUM = "00000" ELSE '0';
		  OVERFLOW <= '0';
		  NEGATIVE <= '0';
		  
end architecture Behavioral;
