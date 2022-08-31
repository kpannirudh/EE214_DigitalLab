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
	end component;
begin
	HA_1: HALF_ADDER1 port map (A => A, B => B, SUM => S1, C0 => C1);
	HA_2: HALF_ADDER1 port map (A => CI, B => S1, SUM => SUM, C0 => C2);
	OR_1: OR_GATE port map (A => C1, B => C2, OUTPUT => CO);
end Struct2;