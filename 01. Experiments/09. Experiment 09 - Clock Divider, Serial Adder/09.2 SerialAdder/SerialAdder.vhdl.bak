library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity word_detection is
	port( inp:in std_logic_vector(4 downto 0);
		reset,clock:in std_logic;
		outp: out std_logic);
end word_detection;

architecture bhv of word_detection is

---------------Define state type here-----------------------------
type state is (rst1,s11,s12, rst2, s21, s22, rst3, s31, s32, s33, s34); -- Fill other states here
---------------Define signals of state type-----------------------
signal y_present1,y_next1: state:=rst1;
signal y_present2,y_next2: state:=rst2;
signal y_present3,y_next3: state:=rst3;
signal outp1, outp2, outp3: std_logic;

begin
clock_proc:process(clock,reset)
begin
	if(clock='1' and clock' event) then
		if(reset = '1') then
			y_present1<= rst1;
			y_present2<= rst2;
			y_present3<= rst3;
		else
			y_present1<= y_next1;
			y_present2<= y_next2;
			y_present3<= y_next3;
		end if;
	end if;
end process;

state_transition_proc:process(inp,y_present1,y_present2,y_present3)
begin
	case y_present1 is
		when rst1=>
			if(unsigned(inp)=18) then --r has been detected
				y_next1<= s11;
			else
				y_next1<=rst1;
			end if;
		when s11=>
			if(unsigned(inp)=21) then --u has been detected
				y_next1<= s12;
			else
				y_next1 <= s11;
			end if;
		when s12=>
			if(unsigned(inp)=14) then --n has been detected
				y_next1<= rst1;
			else
				y_next1<= s12;
			end if;
		when others=>
			null;
	end case;
	
	case y_present2 is
		when rst2=>
			if(unsigned(inp)=3) then --c has been detected
				y_next2<= s21;
			else
				y_next2<=rst2;
			end if;
		when s21=>
			if(unsigned(inp)=18) then --r has been detected
				y_next2<= s22;
			else
				y_next2 <= s21;
			end if;
		when s22=>
			if(unsigned(inp)=25) then --y has been detected
				y_next2<= rst2;
			else
				y_next2<= s22;
			end if;
		when others=>
			null;
	end case;
	
	case y_present3 is
		when rst3=>
			if(unsigned(inp)=2) then --b has been detected
				y_next3<= s31;
			else
				y_next3<=rst3;
			end if;
		when s31=>
			if(unsigned(inp)=18) then --r has been detected
				y_next3<= s32;
			else
				y_next3 <= s31;
			end if;
		when s32=>
			if(unsigned(inp)=15) then --o has been detected
				y_next3<= s33;
			else
				y_next3<= s32;
			end if;
		when s33=>
			if(unsigned(inp)=15) then --o has been detected
				y_next3<= s34;
			else
				y_next3<= s34;
			end if;
		when s34=>
			if(unsigned(inp)=13) then --m has been detected
				y_next3<= rst3;
			else
				y_next3<= s34;
			end if;
		when others=>
			null;
	end case;
end process;

output_proc:process(y_present1, y_present2, y_present3, inp) ------- output process after this which will give
-------the output based on the present state and input (Mealy machine)
begin
	case y_present1 is
		when rst1=>
			outp1<='0';
		when s11=>
			outp1<='0';
		when s12=>
			if (unsigned(inp)=14) then
				outp1<='1';
			else
				outp1<='0';
			end if;
		when others=>
			null;
	end case;
	case y_present2 is
		when rst2=>
			outp2<='0';
		when s21=>
			outp2<='0';
		when s22=>
			if (unsigned(inp)=25) then
				outp2<='1';
			else
				outp2<='0';
			end if;
		when others=>
			null;
	end case;
		case y_present3 is
		when rst3=>
			outp3<='0';
		when s31=>
			outp3<='0';
		when s32=>
			outp3<='0';
		when s33=>
			outp3<='0';
		when s34=>
			if (unsigned(inp)=13) then
				outp3<='1';
			else
				outp3<='0';
			end if;
		when others=>
			null;
	end case;
end process;
outp <= (outp1 or outp2 or outp3);
end bhv;