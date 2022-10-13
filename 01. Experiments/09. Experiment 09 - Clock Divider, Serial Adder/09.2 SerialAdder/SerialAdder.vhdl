library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Serial_Adder is
	port (reset, a, b, clock: in std_logic; s: out std_logic);
end entity;

architecture bhv of Serial_Adder is

type state is (s0, s1); 
signal y_present,y_next: state:=s0;
signal sd1: std_logic;

begin
clock_proc:process(clock,reset)
begin
	if(clock='1' and clock' event) then
		if(reset = '1') then
			y_present<=s0;
			sd1 <= '0';
		else
			sd1 <= '1';
			y_present<=y_next;
		end if;
	end if;
end process;

state_transition_proc:process(a,b,y_present)
begin
	if (clock='1' and clock' event) then
		case y_present is
			when s0=>
				if(a='1' and b ='1') then
					y_next <= s1;
				else
					y_next <= s0;
				end if;
			when s1=>
				if(a='0' and b ='0') then 
					y_next <= s0;
				else
					y_next <= s1;
				end if;
			when others=>
				null;
		end case;
	end if;
end process;

output_proc:process(y_present, a, b) 
begin
	case y_present is
		when s0=>
			if ((a='0' and b ='1') or (a='1' and b='0')) then
				s<=('1' and sd1);
			else 
				s<=('0' and sd1);
			end if;
		when s1=>
			if ((a='0' and b ='0') or (a='1' and b='1')) then
				s<=('1' and sd1);
			else 
				s<=('0' and sd1);
			end if;
		when others=>
			null;
	end case;
end process;

end bhv;