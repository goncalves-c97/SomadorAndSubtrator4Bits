----------------------------------------------------------------------------------
-- Company: Faculdade Engenheiro Salvador Arena
--
-- Engineers: Carlos Adonias
--			  	  Carlos Gonalves
--			 	  Gabriel Teixeira
-- 		 	  Johnny Messias
--
-- Teacher: Filippo Valiante
-- Create Date:   10:30:24 25/03/2023
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY tb_subtrator IS
END tb_subtrator;
 
ARCHITECTURE behavior OF tb_subtrator IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT subtrator4bits
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         SUB : OUT  std_logic_vector(3 downto 0);
         CARRY : OUT  std_logic;
         OVERFLOW : OUT  std_logic;
         ZERO : OUT  std_logic;
         NEGATIVE : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal SUB : std_logic_vector(3 downto 0);
   signal CARRY : std_logic;
   signal OVERFLOW : std_logic;
   signal ZERO : std_logic;
   signal NEGATIVE : std_logic;
 
	constant WAIT_time : time := 10ns;
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: subtrator4bits PORT MAP (
          A => A,
          B => B,
          SUB => SUB,
          CARRY => CARRY,
          OVERFLOW => OVERFLOW,
          ZERO => ZERO,
          NEGATIVE => NEGATIVE
        );

   test_proccess: process
	begin
		-- 0 - 0
		A <= "0000"; 
		B <= "0000";
		wait for WAIT_time;
		
		-- 2 - 4
		A <= "0010";
		B <= "0100";
		wait for WAIT_time;
		
		-- 15 - 15
		A <= "1111";
		B <= "1111";
		wait for WAIT_time;
		
		-- 8 - 2
		A <= "1000";
		B <= "0010";
		wait for WAIT_time;
		
		-- 0 - 1
		A <= "0000";
		B <= "0001";
		wait for WAIT_time;
		
   end process;

END;
