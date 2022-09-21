library ieee;
use ieee.std_logic_1164.all;

entity alu is
  generic(
    operand_width : integer:=4);
  port (
    A: in std_logic_vector(operand_width-1 downto 0);
    B: in std_logic_vector(operand_width-1 downto 0);
    op: out std_logic_vector(5 downto 0)) ;
end alu;

architecture a1 of alu is
  function add(A: in std_logic_vector(4 downto 0);
    B: in std_logic_vector(operand_width-1 downto 0))
    return std_logic_vector is
	   variable sum : std_logic_vector(4 downto 0) := (others => '0');
		variable carry : std_logic_vector(4 downto 0) := (others => '0');
		variable coB : std_logic_vector(4 downto 0);
    begin
	   coB := '0'&B;
		L1: for i in 0 to 4 loop
		  if i = 0 then
		    sum(i) := A(i) xor coB(i) xor '0';
			 carry(i) := A(i) and coB(i);
		  else 
		    sum(i) := A(i) xor coB(i) xor carry(i-1);
			 carry(i) := (A(i) and coB(i)) or (carry(i-1) and (A(i) xor coB(i)));
		  end if;
		end loop L1;
    return carry(4) & sum;
  end add;
  
  function max(A: in std_logic_vector(operand_width-1 downto 0);
    B: in std_logic_vector(operand_width-1 downto 0))
	 return std_logic_vector is
	   variable m : std_logic_vector(operand_width-1 downto 0) := (others => '0');
	 begin 
		  if A > B then
		    m := A;
		  elsif A < B then
		    m := B;
		  else
		    m := "0000";
        end if;
	 return "00" & m;
  end max;
  
  function and1(A: in std_logic_vector(operand_width-1 downto 0);
    B: in std_logic_vector(operand_width-1 downto 0))
	 return std_logic_vector is
	   variable ans : std_logic_vector(operand_width-1 downto 0) := (others => '0');
	 begin
	   L1: for i in 0 to (operand_width-1) loop
		  ans(i) := A(i) and B(i);
		end loop L1;
	 return "00" & ans;
  end and1;
  
  function shift(A: in std_logic_vector(operand_width-1 downto 0))
	 return std_logic_vector is
	   variable shifted : std_logic_vector(4 downto 0) := (others => '0');
	 begin
	   L1: for i in 0 to 4 loop
		  if i = 0 then
		    shifted(i) := '0';
		  else
		    shifted(i) := A(i-1);
		  end if;
		end loop L1;
	 return shifted;
  end shift;
  
  function multi(A: in std_logic_vector(operand_width-1 downto 0);
    B: in std_logic_vector(operand_width-1 downto 0))
	 return std_logic_vector is
	   variable plier : std_logic_vector(5 downto 0);
		variable m: std_logic_vector(4 downto 0);
	 begin
	   m := shift(A);
		plier := add(m,A);
	 return plier;
  end multi;
  
  function eq(A: in std_logic_vector(operand_width-1 downto 0);
    B: in std_logic_vector(operand_width-1 downto 0))
	 return std_logic_vector is
	   variable equi : std_logic_vector(operand_width-1 downto 0);
	 begin
	   if A = B then
		  equi := A;
		else 
		  equi := "0000";
		end if;
	 return "00" & equi;
  end eq;
  
  begin
    alu_beh : process( A, B)
    variable sel : std_logic_vector(1 downto 0);
    begin
    sel := (A(3) & B(3));
    case sel is
    when "00" =>
	 op <= max(A,B);
	 when "01" =>
	 op <= and1(A,B);
	 when "10" =>
	 op <= multi(A,B);
	 when "11" =>
	 op <= eq(A,B);
	 when others =>
	 op <= "000000";
	 end case;
-- signal_name <= add(A,B)
-- variable_name := add(A,B)
    end process ; -- alu_beh
end a1 ; -- a1