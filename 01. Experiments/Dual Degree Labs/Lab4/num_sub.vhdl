library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity num_sub is
  port(A3,A2,A1,A0,B3,B2,B1,B0: in std_logic; Y4,Y3,Y2,Y1,Y0: out std_logic);
end entity num_sub;

architecture Struct of num_sub is
  signal P3,P2,P1,P0,C1,S3,S2,S1,S0,C2,Q,R,S,T,V3,V2,V1,V0,C3,S_1,S_2,S_3,S_0,T_BAR,W3,W2,W1,W0,C4: std_logic;
  component bit4_add_sub is
    port (A3,A2,A1,A0,B3,B2,B1,B0,M : in std_logic; C3,S3,S2,S1,S0 : out std_logic);
  end component; 
  begin
    bas1: bit4_add_sub port map(A3=>'1',A2=>'0',A1=>'1',A0=>'0',B3=>B3,B2=>B2,B1=>B1,B0=>B0,M=>'1',C3=>C1,S3=>P3,S2=>P2,S1=>P1,S0=>P0);
	 bas2: bit4_add_sub port map(A3=>A3,A2=>A2,A1=>A1,A0=>A0,B3=>P3,B2=>P2,B1=>P1,B0=>P0,M=>'0',C3=>C2,S3=>S3,S2=>S2,S1=>S1,S0=>S0);
	 And1: AND_2 port map(A=>S3,B=>S2,Y=>Q);
	 And2: AND_2 port map(A=>S3,B=>S1,Y=>R);
	 O1: OR_2 port map(A=>Q,B=>R,Y=>S);
	 O2: OR_2 port map(A=>S,B=>C2,Y=>T);
	 And3: AND_2 port map(A=>T,B=>'0',Y=>V3);
	 And4: AND_2 port map(A=>T,B=>'1',Y=>V2);
	 And5: AND_2 port map(A=>T,B=>'1',Y=>V1);
	 And6: AND_2 port map(A=>T,B=>'0',Y=>V0);
	 bas3: bit4_add_sub port map(A3=>V3,A2=>V2,A1=>V1,A0=>V0,B3=>S3,B2=>S2,B1=>S1,B0=>S0,M=>'0',C3=>C3,S3=>S_3,S2=>S_2,S1=>S_1,S0=>S_0);
	 NOT1: INVERTER port map(A=>T,Y=>T_BAR);
	 And7: AND_2 port map(A=>T_BAR,B=>'1',Y=>W3);
	 And8: AND_2 port map(A=>T_BAR,B=>'0',Y=>W2);
	 And9: AND_2 port map(A=>T_BAR,B=>'1',Y=>W1);
	 A10: AND_2 port map(A=>T_BAR,B=>'0',Y=>W0);
	 bas4: bit4_add_sub port map(A3=>W3,A2=>W2,A1=>W1,A0=>W0,B3=>S_3,B2=>S_2,B1=>S_1,B0=>S_0,M=>T_BAR,C3=>C4,S3=>Y3,S2=>Y2,S1=>Y1,S0=>Y0);
	 And10: AND_2 port map(A=>'1',B=>T_BAR,Y=>Y4);
end Struct;