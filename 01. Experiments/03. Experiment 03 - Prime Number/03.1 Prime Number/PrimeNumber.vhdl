library ieee;
use ieee.std_logic_1164.all;

entity OR_4  is
  port (A, B, C, D: in std_logic; O: out std_logic);
end entity OR_4;

architecture Struct of OR_4 is
begin
	O <= A or B or C or D;
end Struct;

library ieee;
use ieee.std_logic_1164.all;

entity AND_3  is
  port (A, B, C: in std_logic; O: out std_logic);
end entity AND_3;

architecture Struct1 of AND_3 is
begin
	O <= A and B and C;
end Struct1;

library ieee;
use ieee.std_logic_1164.all;

entity INV  is
  port (A: in std_logic; O: out std_logic);
end entity INV;

architecture Struct3 of INV is
begin
	O <= not(A);
end Struct3;

library ieee;
use ieee.std_logic_1164.all;

entity PrimeNumber  is
  port (A, B, C, D: in std_logic; O: out std_logic);
end entity PrimeNumber;

architecture Struct2 of PrimeNumber is
	signal S1, S2, S3, S4, A_b, B_b, C_b : std_logic;
	component OR_4 is
		port (A, B, C, D: in std_logic; O: out std_logic);
	end component OR_4;
	component AND_3 is
		port (A, B, C: in std_logic; O: out std_logic);
	end component AND_3;
	component INV is
		port (A: in std_logic; O: out std_logic);
	end component INV;
begin
	INV1:	INV port map (A => A, O => A_b);
	INV2:	INV port map (A => B, O => B_b);
	INV3:	INV port map (A => C, O => C_b);
	AND1: AND_3 port map (A => A_b, B => B_b, C => C, O => S1);
	AND2: AND_3 port map (A => A_b, B => C, C => D, O => S2);
	AND3: AND_3 port map (A => B_b, B => C, C => D, O => S3);
	AND4: AND_3 port map (A => B, B => C_b, C => D, O => S4);
	OR1: OR_4 port map (A => S1, B => S2, C => S3, D => S4, O => O);
end Struct2;