library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity demux is
  port(S,D: in std_logic; I_o,I_1: out std_logic);
end entity demux;

architecture Struct of demux is
signal S_BAR: std_logic;
  
begin
  NOT1: INVERTER port map(A=>S,Y=>S_BAR);
  AND1: AND_2 port map(A=>S_BAR,B=>D,Y=>I_o);
  AND2: AND_2 port map(A=>S,B=>D,Y=>I_1);
end Struct;