library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity demux_1x4 is
  port(S2,S1,D: in std_logic;I0,I1,I2,I3: out std_logic);
end entity demux_1x4;

architecture Struct of demux_1x4 is
component demux is
  port (S,D: in std_logic; I_o,I_1: out std_logic);
end component;
signal P,Q: std_logic;

begin
  demux1: demux port map(S=>S2,D=>D,I_o=>P,I_1=>Q);
  demux2: demux port map(S=>S1,D=>P,I_o=>I0,I_1=>I1);
  demux3: demux port map(S=>S1,D=>Q,I_o=>I2,I_1=>I3);
end Struct;