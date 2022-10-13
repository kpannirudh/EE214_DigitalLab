library ieee;
use ieee.std_logic_1164.all;

entity alu_beh is
	generic(
		operand_width : integer:=4);
	port (
		A: in std_logic_vector(operand_width-1 downto 0);
		B: in std_logic_vector(operand_width-1 downto 0);
		op: out std_logic_vector((operand_width*2)-1 downto 0)) ;
end alu_beh;

architecture a1 of alu_beh is
	function sub(A: in std_logic_vector(operand_width-1 downto 0); B: in std_logic_vector(operand_width-1 downto 0))
		return std_logic_vector is
			-- declaring and initializing variables using aggregates
			variable diff : std_logic_vector(operand_width*2-1 downto 0):= (others=>'0');
			variable carry : std_logic:= '1';
			variable borrow: std_logic_vector(3 downto 0);
		begin
			-- Hint: Use for loop to calculate value of "diff" and "carry" variable
			-- Use aggregates to assign values to multiple bits
			L1: for i in 0 to (operand_width-1) loop
				if i=0 then
					diff(i) := A(i) xor B(i);
					borrow(i) := not(A(i)) and B(i);
				else
					diff(i) := A(i) xor B(i) xor borrow(i-1);
					borrow(i) := (not(A(i)) and B(i)) or ((not(A(i) xor B(i))) and borrow(i-1));
				end if;
			end loop L1;
		return diff;
	end sub;

	function rolf(A: in std_logic_vector(operand_width-1 downto 0); B: in std_logic_vector(operand_width-1 downto 0))
		return std_logic_vector is
			variable shift : std_logic_vector((operand_width*2)-1 downto 0):= (others=>'0');
			variable temp1 : std_logic_vector((operand_width*2)-1 downto 0):= (others=>'0');
			variable temp: std_logic;
			variable sum: integer:=0;
		begin
			
			-- Hint: use for loop to calculate value of shift variable
			-- shift(____ downto _____) & shift(____ downto ______)
			-- to calculate exponent, you can use double asterisk. ex: 2**i
			
			shift(operand_width-1 downto 0):= A;
			L3: for k in 0 to 2 loop
				if B(k) = '1' then
					sum := sum + (2**k);
				end if;
			end loop L3;
			
			L4: for o in 0 to (operand_width-1) loop
				if (o+sum)<(operand_width*2) then
					temp1(o+sum) := shift(o);
				else 
					temp1(o+sum-2*operand_width) := shift(o);
				end if;
			end loop L4;	
				
		return temp1;
	end rolf;
	
	function fourXOR(A: in std_logic_vector(operand_width-1 downto 0);B: in std_logic_vector(operand_width-1 downto 0))
		return std_logic_vector is
			variable output : std_logic_vector((operand_width*2)-1 downto 0):= (others=>'0');
		begin
			L1: for i in 0 to (operand_width-1) loop
				output(i):= (A(i) xor B(i));
			end loop L1;
		return output;
	end fourXOR;
	
	function add(A: in std_logic_vector((operand_width*2-1) downto 0); B: in std_logic_vector((operand_width*2-1) downto 0))
	return std_logic_vector is
	  variable sum : std_logic_vector((operand_width*2-1) downto 0);
	  variable carry : std_logic_vector((operand_width*2-1) downto 0);
	  
	 begin
		L1: for i in 0 to (operand_width*2-1) loop
				if i=0 then
					sum(i) := A(i) xor B(i) xor '0';
					carry(i) := A(i) and B(i);
				else
					sum(i) := A(i) xor B(i) xor carry(i-1);
					carry(i) := (A(i) and B(i)) or ((A(i) xor B(i)) and carry(i-1));
				end if;
			end loop L1;
		return sum;
	end add;

	begin
		alu : process( A, B)
		begin

	-- complete VHDL code for various outputs of ALU based on select lines
	-- Hint: use if/else statement
		if A(3) = '0' and B(3) = '0' then
			op <= rolf(A,B);
		elsif A(3) = '0' and B(3) = '1' then
			op <= sub(B,A);
		elsif A(3) = '1' and B(3) = '0' then
			op <= add(rolf(A,"0010"), "0000"&A);
		else 
			op <= fourXOR(A,B);
		end if;
	-- sub function usage :
	-- signal_name <= sub(A,B)
	-- variable_name := sub(A,B)
	--
	-- concatenate operator usage:
	-- "0000"&A
	end process ; --alu
end a1 ; -- a1