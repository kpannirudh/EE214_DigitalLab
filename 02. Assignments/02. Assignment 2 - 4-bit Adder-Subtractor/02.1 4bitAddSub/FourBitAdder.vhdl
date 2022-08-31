library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity OR_GATE  is
  port (A, B: in std_logic; OUTPUT: out std_logic);
end entity OR_GATE;

architecture Struct of OR_GATE is
	signal A_BAR, B_BAR : std_logic;
begin
  -- component instances
  NAND1: NAND_2 port map (A => A, B => A, Y => A_BAR);
  NAND2: NAND_2 port map (A => B, B => B, Y => B_BAR);
  
  -- final OR
  NAND3: NAND_2 port map (A => A_BAR, B => B_BAR, Y => OUTPUT);
end Struct;

library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;


entity HALF_ADDER1 is
	port (A, B: in std_logic; SUM, C0: out std_logic);
end entity HALF_ADDER1;

architecture Struct1 of HALF_ADDER1 is
	signal S1, S2, S3, S0 : std_logic;
begin
	--carry
	NAND1: NAND_2 port map (A => A, B => B, Y => S0);
	NAND2: NAND_2 port map (A => S0, B => S0, Y => C0);
	
	--sum
	NAND3: NAND_2 port map (A => A, B => B, Y => S1);
	NAND4: NAND_2 port map (A => A, B => S1, Y => S2);
	NAND5: NAND_2 port map (A => B, B => S1, Y => S3);
	NAND6: NAND_2 port map (A => S2, B => S3, Y => SUM);

end Struct1;

library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity FULL_ADDER is
	port (A, B, CI: in std_logic; SUM, CO: out std_logic);
end entity FULL_ADDER;

architecture Struct2 of FULL_ADDER is
	signal S1, C1, C2 : std_logic;
	component HALF_ADDER1 is
		port (A, B: in std_logic; SUM, C0: out std_logic);
	end component HALF_ADDER1;
	component OR_GATE is
		port (A, B: in std_logic; OUTPUT: out std_logic);
	end component OR_GATE;
begin
	HA_1: HALF_ADDER1 port map (A => A, B => B, SUM => S1, C0 => C1);
	HA_2: HALF_ADDER1 port map (A => CI, B => S1, SUM => SUM, C0 => C2);
	OR_1: OR_GATE port map (A => C1, B => C2, OUTPUT => CO);
end Struct2;

library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity XOR_GATE  is
  port (A, B: in std_logic; OUTPUT: out std_logic);
end entity XOR_GATE;

architecture Struct3 of XOR_GATE is
  signal S1, S2, S3 : std_logic;
begin
  -- component instances
  NAND1: NAND_2 port map (A => A, B => B, Y => S1);
  NAND2: NAND_2 port map (A => A, B => S1, Y => S2);
  NAND3: NAND_2 port map (A => B, B => S1, Y => S3);
  
  -- final XOR
  NAND4: NAND_2 port map (A => S2, B => S3, Y => OUTPUT);
  
end Struct3;

library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity FourBitAdder  is
  port (M: in std_logic; A, B: in std_logic_vector(3 downto 0);
       	S: out std_logic_vector(3 downto 0); Cout: out std_logic); 
end entity FourBitAdder;

architecture Struct4 of FourBitAdder is
   signal Y1, Y2, Y3, Y4, Y5, Y6, Y7: std_logic;
	component XOR_GATE is
		port (A, B: in std_logic; OUTPUT: out std_logic);
	end component XOR_GATE;
	component FULL_ADDER is
		port (A, B, CI: in std_logic; SUM, CO: out std_logic);
	end component FULL_ADDER;
begin	
	XOR1: XOR_GATE port map (A => B(0), B => M, OUTPUT => Y1);
	FA_1: FULL_ADDER port map (A => Y1, B => A(0),  CI => M, SUM => S(0), CO => Y2);
	XOR2: XOR_GATE port map (A => B(1), B => M, OUTPUT => Y3);
	FA_2: FULL_ADDER port map (A => Y3, B => A(1),  CI => Y2, SUM => S(1), CO => Y4);
	XOR3: XOR_GATE port map (A => B(2), B => M, OUTPUT => Y5);
	FA_3: FULL_ADDER port map (A => Y5, B => A(2),  CI => Y4, SUM => S(2), CO => Y6);
	XOR4: XOR_GATE port map (A => B(3), B => M, OUTPUT => Y7);
	FA_4: FULL_ADDER port map (A => Y7, B => A(3),  CI => Y6, SUM => S(3), CO => Cout);
end Struct4;
