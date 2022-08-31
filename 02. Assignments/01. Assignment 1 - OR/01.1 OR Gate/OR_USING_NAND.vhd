library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity OR_USING_NAND is
	port (A, B: in std_logic; OUTPUT: out std_logic);
end entity OR_USING_NAND;

architecture Struct of OR_USING_NAND is 
	signal A_BAR, B_BAR : std_logic;
begin
	-- component instances
	NAND1: NAND_2 port map (A => A, B => A, Y => A_BAR);
	NAND2: NAND_2 port map (A => B, B => B, Y => B_BAR);
	
	--final OR
	NAND3: NAND_2 port map (A => A_BAR, B => B_BAR, Y => OUTPUT);
end Struct;