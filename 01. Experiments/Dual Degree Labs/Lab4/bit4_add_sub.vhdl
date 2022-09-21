library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity bit4_add_sub is
  port (A3,A2,A1,A0,B3,B2,B1,B0,M : in std_logic; C3,S3,S2,S1,S0 : out std_logic);
end entity bit4_add_sub;

architecture Struct of bit4_add_sub is
  signal D0,D1,D2,D3,C0,C1,C2 : std_logic;
  component full_adder is
    port (A,B,C: in std_logic; S,Cout: out std_logic);
  end component;
  
  begin
    XOR0: XOR_2 port map(A=>M,B=>B0,Y=>D0);
	 XOR1: XOR_2 port map(A=>M,B=>B1,Y=>D1);
	 XOR2: XOR_2 port map(A=>M,B=>B2,Y=>D2);
	 XOR3: XOR_2 port map(A=>M,B=>B3,Y=>D3);
	 FA0: full_adder port map(A=>A0,B=>D0,C=>M,S=>S0,Cout=>C0);
	 FA1: full_adder port map(A=>A1,B=>D1,C=>C0,S=>S1,Cout=>C1);
	 FA2: full_adder port map(A=>A2,B=>D2,C=>C1,S=>S2,Cout=>C2);
	 FA3: full_adder port map(A=>A3,B=>D3,C=>C2,S=>S3,Cout=>C3);
end Struct;