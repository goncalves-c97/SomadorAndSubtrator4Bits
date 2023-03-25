--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:09:23 03/24/2023
-- Design Name:   
-- Module Name:   C:/Users/082190011/Documents/GitHub/SomadorSubtrator4Bits/SomadorSubtrator4BitsProj/tb_somador.vhd
-- Project Name:  SomadorSubtrator4BitsProj
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: somador4bits
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_somador IS
END tb_somador;
 
ARCHITECTURE behavior OF tb_somador IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT somador4bits
    PORT(
         A : IN  std_logic_vector(0 to 3);
         B : IN  std_logic_vector(0 to 3);
         SOMA : OUT  std_logic_vector(3 downto 0);
         CARRY : OUT  std_logic;
         OVERFLOW : OUT  std_logic;
         ZERO : OUT  std_logic;
         NEGATIVE : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(0 to 3) := "0000";
   signal B : std_logic_vector(0 to 3) := "0000";

 	--Outputs
   signal SOMA : std_logic_vector(3 downto 0);
   signal CARRY : std_logic;
   signal OVERFLOW : std_logic;
   signal ZERO : std_logic;
   signal NEGATIVE : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
	constant WAIT_time : time := 10ns;
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: somador4bits PORT MAP (
          A => A,
          B => B,
          SOMA => SOMA,
          CARRY => CARRY,
          OVERFLOW => OVERFLOW,
          ZERO => ZERO,
          NEGATIVE => NEGATIVE
        );
 

   test_proccess: process
	begin
		A <= "1000";
		B <= "1000";
		wait for WAIT_time;
		A <= "0001";
		B <= "0001";
		wait for WAIT_time;
		A <= "0001";
		B <= "0001";
		wait for WAIT_time;
		A <= "0001";
		B <= "0001";
		wait for WAIT_time;
		A <= "0001";
		B <= "0001";
		wait for WAIT_time;
		A <= "0001";
		B <= "0001";
		wait for WAIT_time;
		A <= "0001";
		B <= "0001";
		wait for WAIT_time;
		A <= "0001";
		B <= "0001";
		wait for WAIT_time;
		A <= "0001";
		B <= "0001";
		wait for WAIT_time;
		A <= "0001";
		B <= "0001";
		wait for WAIT_time;
		A <= "0001";
		B <= "0001";
		wait for WAIT_time;
		A <= "0001";
		B <= "0001";
		wait for WAIT_time;
		A <= "0001";
		B <= "0001";
		wait for WAIT_time;
		A <= "0001";
		B <= "0001";
		wait for WAIT_time;
		A <= "0001";
		B <= "0001";
		wait for WAIT_time;
		A <= "0001";
		B <= "0001";
		wait for WAIT_time;
		A <= "0001";
		B <= "0001";
		wait for WAIT_time;
		A <= "0001";
		B <= "0001";
		wait for WAIT_time;
		A <= "0001";
		B <= "0001";
		wait for WAIT_time;
		A <= "0001";
		B <= "0001";
		wait for WAIT_time;
		A <= "0001";
		B <= "0001";
		wait for WAIT_time;
		A <= "0001";
		B <= "0001";
		wait for WAIT_time;
		A <= "0001";
		B <= "0001";
		wait for WAIT_time;
		A <= "0001";
		B <= "0001";
		wait for WAIT_time;
		A <= "0001";
		B <= "0001";
		wait for WAIT_time;
		A <= "0001";
		B <= "0001";
		wait for WAIT_time;
		A <= "0001";
		B <= "0001";
		wait for WAIT_time;
		A <= "0001";
		B <= "0001";
		wait for WAIT_time;
   end process;

END;
