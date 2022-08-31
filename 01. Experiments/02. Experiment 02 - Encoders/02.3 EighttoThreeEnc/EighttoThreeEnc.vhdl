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

library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity EighttoThreeEnc  is
  port (Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0, EN: in std_logic; A2, A1, A0: out std_logic);
end entity EighttoThreeEnc;

architecture Logic1 of EighttoThreeEnc is
  signal S1, S2, S3, S4, S5, S6, S7 : std_logic;
  component FourtoTwoEncoder is
		port (A, B, C, D, EN: in std_logic; Y1, Y0: out std_logic);
	end component FourtoTwoEncoder;
begin
  -- component instances
  ENC1: FourtoTwoEncoder port map (A => Y7, B => Y6, C => Y5, D => Y4, EN => EN, Y1 => S1, Y0 => S2);
  ENC2: FourtoTwoEncoder port map (A => Y3, B => Y2, C => Y1, D => Y0, EN => EN, Y1 => S3, Y0 => S4);
  ENC3: FourtoTwoEncoder port map (A => Y4, B => Y4, C => Y4, D => Y4, EN => EN, Y1 => S6, Y0 => S7);
  OR1: OR_2 port map (A => S1, B => S3, Y => A1);
  OR2: OR_2 port map (A => S2, B => S4, Y => A0);
  OR3: OR_2 port map (A => S1, B => S2, Y => S5);
  OR4: OR_2 port map (A => S5, B => S6, Y => A2);
end Logic1;