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
		FLAG_OUTPUT: out STD_LOGIC_VECTOR (3 downto 0);
		DISP_SUPPLY: out STD_LOGIC_VECTOR (3 downto 0)
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

somador1:somador4bits
port map (
	A => reg1_calc,
	B => reg2_calc,
   SOMA(0) => soma_mux(0),
	SOMA(1) => soma_mux(1),
	SOMA(2) => soma_mux(2),
	SOMA(3) => soma_mux(3),
   CARRY => soma_mux(4),
	OVERFLOW => soma_mux(5),
	ZERO => soma_mux(6),
	NEGATIVE => soma_mux(7)
);

subtrator1:subtrator4bits
port map (
	A => reg1_calc,
	B => reg2_calc,
   SUB(0) => sub_mux(0),
	SUB(1) => sub_mux(1),
	SUB(2) => sub_mux(2),
	SUB(3) => sub_mux(3),
   CARRY => sub_mux(4),
	OVERFLOW => sub_mux(5),
	ZERO => sub_mux(6),
	NEGATIVE => sub_mux(7)
);

mux1:mux2x8
port map (
	E0 => soma_mux,
	E1 => sub_mux,
	SEL => SEL,
	S => mux_reg3
);

reg3:reg8bits
port map 
( 
	INPUT => mux_reg3,
	OUTPUT(0) => reg3_output(0),
	OUTPUT(1) => reg3_output(1),
	OUTPUT(2) => reg3_output(2),
	OUTPUT(3) => reg3_output(3),
	OUTPUT(4) => reg3_output(4),
	OUTPUT(5) => reg3_output(5),
	OUTPUT(6) => reg3_output(6),
	OUTPUT(7) => reg3_output(7),
	EN => EN3,
	CLR => CLR,
	CLK => CLK
);

decoder1:decoder7seg
port map (
	INPUT(0) => reg3_output(0),
	INPUT(1) => reg3_output(1),
	INPUT(2) => reg3_output(2),
	INPUT(3) => reg3_output(3),
   OUTPUT => OUTPUT,
	SEL => "0001",
	DISP => DISP_SUPPLY
);

driverLed1:LedInterface
port map (
	SEL(0) => reg3_output(4),
	SEL(1) => reg3_output(5),
	SEL(2) => reg3_output(6),
	SEL(3) => reg3_output(7),
	DISP => FLAG_OUTPUT
);

end Behavioral;

