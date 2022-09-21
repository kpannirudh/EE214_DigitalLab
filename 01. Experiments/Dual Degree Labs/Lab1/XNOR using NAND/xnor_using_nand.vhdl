library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity xnor_using_nand is
  port(A,B: in std_logic; OUTPUT: out std_logic);
end entity xnor_using_nand;

architecture Struct of xnor_using_nand is
  signal P,Q,R,S : std_logic;
begin
  NAND1: NAND_2 port map (A => A,B => B,Y => P);
  NAND2: NAND_2 port map (A => A,B => P,Y => Q);
  NAND3: NAND_2 port map (A => P,B => B,Y => R);
  NAND4: NAND_2 port map (A => Q,B => R,Y => S);
  NAND5: NAND_2 port map (A => S,B => S,Y => OUTPUT);
end Struct;
