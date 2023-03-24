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
-- Declaração da entidade

entity somador_4bits is
    port (a, b: in std_logic_vector(3 downto 0);
          carry_in: in std_logic;
          sum: out std_logic_vector(3 downto 0);
          carry_out: out std_logic);
end entity somador_4bits;

-- Definição da arquitetura
architecture Behavioral of somador_4bits is
begin
    -- Implementação do somador
    process(a, b, carry_in)
        variable temp_sum: std_logic_vector(3 downto 0);
    begin
        temp_sum := a + b + carry_in;
        sum <= temp_sum;
        carry_out <= '1' when temp_sum > "1111" else '0';
    end process;
end architecture Behavioral;

