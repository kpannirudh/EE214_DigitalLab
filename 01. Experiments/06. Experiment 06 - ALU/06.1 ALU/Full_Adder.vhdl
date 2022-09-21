library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity Full_Adder  is
  port (A,B,C,D: in std_logic_vector(3 downto 0);op1,op2: out std_logic_vector(4 downto 0);;
end entity Full_Adder;

architecture Struct of Full_Adder is
  function add(A: in std_logic_vector(3 downto 0);
           B: in std_logic_vector(3 downto 0))
	return std_logic_vector is
	  variable sum : std_logic_vector(3 downto 0);
	  variable carry : std_logic_vector(3 downto 0);
	  
	 begin
		L1: for i in 0 to 3 loop
				if i=0 then
					sum(i) := A(i) xor B(i) xor '0';
					carry(i) := A(i) and B(i);
				else
					sum(i) := A(i) xor B(i) xor carry(i-1);
					carry(i) := (A(i) xor B(i)) and (A(i) and B(i)) or carry(i-1);
				end if;
			end loop L1;
		return carry(3) & sum;
	end add;
	
	begin
		 process(A,B,c,D)
			variable outAB : std_logic_vector(4 downto 0);
			variable outCD : std_logic_vector(4 downto 0);
		 begin
			outAB := add(A,B);
			outCD := add(A,B);
			op1 <= outAB;
			op2 <= outCD;
		 end process;
end struct;

