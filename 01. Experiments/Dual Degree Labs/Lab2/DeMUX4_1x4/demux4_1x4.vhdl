library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity demux4_1x4 is
  port(A3,A2,A1,A0,S1,S0: in std_logic;
       I15,I14,I13,I12,I11,I10,I9,I8,I7,I6,I5,I4,I3,I2,I1,I0: out std_logic);
end entity demux4_1x4;

architecture Struct of demux4_1x4 is
  component demux_1x4 is
    port(S2,S1,D: in std_logic;I0,I1,I2,I3: out std_logic);
  end component;
  
  begin
    demux1: demux_1x4 port map(S2=>S1,S1=>S0,D=>A3,I3=>I15,I2=>I11,I1=>I7,I0=>I3);
	 demux2: demux_1x4 port map(S2=>S1,S1=>S0,D=>A2,I3=>I14,I2=>I10,I1=>I6,I0=>I2);
	 demux3: demux_1x4 port map(S2=>S1,S1=>S0,D=>A1,I3=>I13,I2=>I9,I1=>I5,I0=>I1);
	 demux4: demux_1x4 port map(S2=>S1,S1=>S0,D=>A0,I3=>I12,I2=>I8,I1=>I4,I0=>I0);
end Struct;