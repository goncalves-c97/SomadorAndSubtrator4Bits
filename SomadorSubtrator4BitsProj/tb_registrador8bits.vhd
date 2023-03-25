--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
----------------------------------------------------------------------------------
-- Company: Faculdade Engenheiro Salvador Arena
--
-- Engineers: Carlos Adonias
--			  	  Carlos Gonçalves
--			 	  Gabriel Teixeira
-- 		 	  Johnny Messias
--
-- Teacher: Filippo Valiante
-- Create Date:   21:40:23 24/03/2023
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_registrador8bits IS
END tb_registrador8bits;
 
ARCHITECTURE behavior OF tb_registrador8bits IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT reg8bits
    PORT(
         INPUT : IN  std_logic_vector(7 downto 0);
         OUTPUT : OUT  std_logic_vector(7 downto 0);
         EN : IN  std_logic;
         CLR : IN  std_logic;
         CLK : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal INPUT : std_logic_vector(7 downto 0) := (others => '0');
   signal EN : std_logic := '0';
   signal CLR : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal OUTPUT : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
   constant WAIT_time : time := CLK_period * 2;
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: reg8bits PORT MAP (
          INPUT => INPUT,
          OUTPUT => OUTPUT,
          EN => EN,
          CLR => CLR,
          CLK => CLK
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 
   test_proccess: process
	begin
		-- Limpa todos os registradores
		CLR <= '1';
		wait for WAIT_time;
		CLR <= '0';
		wait for WAIT_time;
		
		
		-- Preenche registrador com valor personalizado
		INPUT <= "10101010"; -- AA
		EN <= '1';
		wait for WAIT_time;
		EN <= '0';
		wait for WAIT_time;
		
		-- Preenche registrador com valor personalizado
		INPUT <= "01010101"; -- 55
		EN <= '1';
		wait for WAIT_time;
		EN <= '0';
		wait for WAIT_time;
   end process;

END;
