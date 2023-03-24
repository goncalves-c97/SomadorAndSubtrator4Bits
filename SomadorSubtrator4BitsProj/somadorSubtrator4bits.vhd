----------------------------------------------------------------------------------
-- Company: Faculdade Engenheiro Salvador Arena
--
-- Engineers: Carlos Adonias
--			  	  Carlos Gonçalves
--			 	  Gabriel Teixeira
-- 		 	  Johnny Messias
--
-- Teacher: Filippo Valiante
-- Create Date:    20:14:35 24/03/2023
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity somadorSubtrator4bits is
    Port 
	 ( 
		INPUT : in  STD_LOGIC_VECTOR (3 downto 0);
      CLK : in  STD_LOGIC;
      EN1 : in  STD_LOGIC;
      EN2 : in  STD_LOGIC;
      EN3 : in  STD_LOGIC;
		SEL : in STD_LOGIC;
		CLR : in STD_LOGIC;
		OUTPUT: out STD_LOGIC_VECTOR (6 downto 0);
		FLAG_OUTPUT: out STD_LOGIC_VECTOR (3 downto 0)
		--DISP_SUPPLY: out STD_LOGIC_VECTOR (3 downto 0);
		--DISP_CTRL: in STD_LOGIC_VECTOR (3 downto 0)
	 );
end somadorSubtrator4bits;

architecture Behavioral of somadorSubtrator4bits is

component mux2x8
	Port 
	( 
		E0 : in  STD_LOGIC_VECTOR (7 downto 0);
		E1 : in  STD_LOGIC_VECTOR (7 downto 0);
      S : out  STD_LOGIC_VECTOR (7 downto 0);
		SEL : in  STD_LOGIC
	);
end component;

component reg4bits
	Port 
	( 
		INPUT : in  STD_LOGIC_VECTOR (3 downto 0);
      OUTPUT : out  STD_LOGIC_VECTOR (3 downto 0);
      EN : in  STD_LOGIC;
      CLR : in  STD_LOGIC;
      CLK : in  STD_LOGIC
	);
end component;

component reg8bits
	Port 
	( 
	   INPUT : in  STD_LOGIC_VECTOR (7 downto 0);
      OUTPUT : out  STD_LOGIC_VECTOR (7 downto 0);
      EN : in  STD_LOGIC;
      CLR : in  STD_LOGIC;
      CLK : in  STD_LOGIC
	);
end component;

component somador4bits
	Port 
	(   
		A, B: in STD_LOGIC_VECTOR(3 downto 0);
      SOMA: out STD_LOGIC_VECTOR(3 downto 0);
      CARRY: out STD_LOGIC;
		OVERFLOW: out STD_LOGIC;
		ZERO: out STD_LOGIC;
		NEGATIVE: out STD_LOGIC
	);
end component;

component subtrator4bits
	Port 
	(   
		A, B: in STD_LOGIC_VECTOR(3 downto 0);
      SUB: out STD_LOGIC_VECTOR(3 downto 0);
      CARRY: out STD_LOGIC;
		OVERFLOW: out STD_LOGIC;
		ZERO: out STD_LOGIC;
		NEGATIVE: out STD_LOGIC
	);
end component;

component decoder7seg
	Port 
	( 
		INPUT : in STD_LOGIC_VECTOR (3 downto 0);
      OUTPUT : out STD_LOGIC_VECTOR (6 downto 0);
		SEL : in STD_LOGIC_VECTOR (3 downto 0);
		DISP : out STD_LOGIC_VECTOR (3 downto 0)
	);
end component;

component LedInterface
	Port 
	( 
		SEL : in STD_LOGIC_VECTOR (3 downto 0);
		DISP : out STD_LOGIC_VECTOR (3 downto 0)
	);
end component;

signal reg1_calc : STD_LOGIC_VECTOR (3 downto 0);
signal reg2_calc : STD_LOGIC_VECTOR (3 downto 0);
signal reg2_mux : STD_LOGIC_VECTOR (3 downto 0);
signal soma_mux : STD_LOGIC_VECTOR (7 downto 0);
signal sub_mux : STD_LOGIC_VECTOR (7 downto 0);
signal mux_reg3 : STD_LOGIC_VECTOR (7 downto 0);
signal reg3_output : STD_LOGIC_VECTOR (7 downto 0);

begin

reg1:reg4bits
port map 
( 
	INPUT => INPUT,
	OUTPUT => reg1_calc,
	EN => EN1,
	CLR => CLR,
	CLK => CLK
);

reg2:reg4bits
port map 
( 
	INPUT => INPUT,
	OUTPUT => reg2_calc,
	EN => EN2,
	CLR => CLR,
	CLK => CLK
);

--TO DO
reg3:reg8bits
port map 
( 
	INPUT => mux_reg3,
	OUTPUT => reg3_decoder,
	EN => EN3,
	CLR => CLR,
	CLK => CLK
);

mux1:mux2x8
port map (
	E0 => soma_mux,
	E1 => sub_mux,
	SEL => SEL,
	S => mux_reg3
);

decoder1:decoder7seg
port map (
	INPUT => reg3_decoder,
   OUTPUT => OUTPUT,
	SEL => DISP_CTRL,
	DISP => DISP_SUPPLY
);

somador1:somador4bits
port map (
	A => reg1_calc,
	B => reg2_calc,
   SOMA => soma_mux,
   CARRY => OUTPUT,
	OVERFLOW => OUTPUT,
	ZERO => OUTPUT,
	NEGATIVE => OUTPUT
);

subtrator1:subtrator4bits
port map (
	A => reg1_calc,
	B => reg2_calc,
   SUB => OUTPUT,
   CARRY => OUTPUT,
	OVERFLOW => OUTPUT,
	ZERO => OUTPUT,
	NEGATIVE => OUTPUT
);

driveLed1:LedInterface
port map (
	SEL => OUTPUT
	DISP => OUTPUT,
);




end Behavioral;

