library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity full_subtractor_using_nand is
  port (A,B,C : in std_logic; DIFF,BOR : out std_logic);
end entity full_subtractor_using_nand;

architecture Struct of full_subtractor_using_nand is
  component xnor_using_nand is
    port(A,B: in std_logic; OUTPUT: out std_logic);
  end component;
signal P,A_BAR,Q,R : std_logic;

begin
  xnor1: xnor_using_nand port map (A => A,B => B, OUTPUT => P);
  xnor2: xnor_using_nand port map (A => P,B => C, OUTPUT => DIFF);
  NAND1: NAND_2 port map (A => A, B => A, Y => A_BAR);
  NAND2: NAND_2 port map (A => A_BAR, B => B, Y => Q);
  NAND3: NAND_2 port map (A => P, B => C, Y => R);
  NAND4: NAND_2 port map (A => Q, B => R, Y => BOR);
end Struct;