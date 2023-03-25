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
 
ENTITY tb_somadorSubtrator4bits IS
END tb_somadorSubtrator4bits;
 
ARCHITECTURE behavior OF tb_somadorSubtrator4bits IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT somadorSubtrator4bits
    PORT(
         INPUT : IN  std_logic_vector(3 downto 0);
         CLK : IN  std_logic;
         EN1 : IN  std_logic;
         EN2 : IN  std_logic;
         EN3 : IN  std_logic;
         SEL : IN  std_logic;
         CLR : IN  std_logic;
         OUTPUT : OUT  std_logic_vector(6 downto 0);
         FLAG_OUTPUT : OUT  std_logic_vector(3 downto 0);
         DISP_SUPPLY : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal INPUT : std_logic_vector(3 downto 0) := (others => '0');
   signal CLK : std_logic := '0';
   signal EN1 : std_logic := '0';
   signal EN2 : std_logic := '0';
   signal EN3 : std_logic := '0';
   signal SEL : std_logic := '0';
   signal CLR : std_logic := '0';

 	--Outputs
   signal OUTPUT : std_logic_vector(6 downto 0);
   signal FLAG_OUTPUT : std_logic_vector(3 downto 0);
   signal DISP_SUPPLY : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
	constant WAIT_time : time := CLK_period * 2;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: somadorSubtrator4bits PORT MAP (
          INPUT => INPUT,
          CLK => CLK,
          EN1 => EN1,
          EN2 => EN2,
          EN3 => EN3,
          SEL => SEL,
          CLR => CLR,
          OUTPUT => OUTPUT,
          FLAG_OUTPUT => FLAG_OUTPUT,
          DISP_SUPPLY => DISP_SUPPLY
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
				
		-- Preenche registrador 1 com valor personalizado
		INPUT <= "1101"; -- 13 (D)
		EN1 <= '1';
		wait for WAIT_time;
		EN1 <= '0';
		
		-- Preenche registrador 2 com valor personalizado
		INPUT <= "0001"; -- 1 (1)
		EN2 <= '1';
		wait for WAIT_time;
		EN2 <= '0';
		
		-- Limpa input
		INPUT <= "0000";
		wait for WAIT_time;
		
		-- Preenche na saída o valor da soma
		SEL <= '0';
		EN3 <= '1';
		wait for WAIT_time;
		EN3 <= '0';
		
--		-- Preenche na saída o valor do registrador 2
--		SEL <= '1';
--		EN3 <= '1';
--		wait for WAIT_time;
--		EN3 <= '0';
--		
--			-- Limpa todos os registradores
--		CLR <= '1';
--		wait for WAIT_time;
--		CLR <= '0';
--		wait for WAIT_time;
	end process;

END;
