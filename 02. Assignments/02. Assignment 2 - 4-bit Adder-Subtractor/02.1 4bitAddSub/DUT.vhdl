-- A DUT entity is used to wrap your design so that we can combine it with testbench.
-- This example shows how you can do this for the OR Gate

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
    port(input_vector: in std_logic_vector(8 downto 0);
       	output_vector: out std_logic_vector(4 downto 0));
end entity;

architecture DutWrap of DUT is
   component FourBitAdder is
     port (M: in std_logic; A, B: in std_logic_vector(3 downto 0);
       	S: out std_logic_vector(3 downto 0); Cout: out std_logic); 
	end component FourBitAdder;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: FourBitAdder 
			port map (
					A => input_vector(8 downto 5),
					B => input_vector(4 downto 1),
					M => input_vector(0),
					Cout => output_vector(4),
					S => output_vector(3 downto 0));
end DutWrap;