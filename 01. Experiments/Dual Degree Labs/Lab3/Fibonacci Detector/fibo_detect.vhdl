library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity fibo_detect is
  port(A,B,C,D : in std_logic; Y : out std_logic);
end entity fibo_detect;

architecture Struct of fibo_detect is
  signal C_BAR,P,Q,R : std_logic;
  
  begin
  NOR1: NOR_2 port map(A=>A,B=>B,Y=>P);
  NOT1: INVERTER port map(A=>C,Y=>C_BAR);
  XNOR1: XNOR_2 port map(A=>B,B=>D,Y=>Q);
  AND1: AND_2 port map(A=>C_BAR,B=>Q,Y=>R);
  OR1: OR_2 port map(A=>P,B=>R,Y=>Y);
end Struct;