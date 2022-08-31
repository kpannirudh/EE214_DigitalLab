library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity FourtoTwoEncoder  is
  port (A, B, C, D, EN: in std_logic; Y1, Y0: out std_logic);
end entity FourtoTwoEncoder;

architecture Logic of FourtoTwoEncoder is
  signal S1, S2 : std_logic;
begin
  -- component instances
  OR1: OR_2 port map (A => A, B => B, Y => S1);
  OR2: OR_2 port map (A => A, B => C, Y => S2);
  AND1: AND_2 port map (A => S1, B => EN, Y => Y1);
  AND2: AND_2 port map (A => S2, B => EN, Y => Y0);
end Logic;