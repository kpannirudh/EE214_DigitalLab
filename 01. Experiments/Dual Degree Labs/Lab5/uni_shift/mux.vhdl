library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity mux is
  port (i0,i1,s : in std_logic; y : out std_logic);
end entity mux;

architecture Struct of mux is
  signal p,q,sbar : std_logic;
  
  begin
  AND1: AND_2 port map(A=>i0,B=>sbar,Y=>p);
  AND2: AND_2 port map(A=>i1,B=>s,Y=>q);
  INVERT: INVERTER port map(A=>s,Y=>sbar);
  OR1: OR_2 port map(A=>p,B=>q,Y=>y);
end Struct;