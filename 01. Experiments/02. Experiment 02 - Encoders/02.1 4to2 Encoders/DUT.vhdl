-- A DUT entity is used to wrap your design so that we can combine it with testbench.
-- This example shows how you can do this for the OR Gate

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
    port(input_vector: in std_logic_vector(4 downto 0);
       	output_vector: out std_logic_vector(1 downto 0));
end entity;

architecture DutWrap of DUT is
   component FourtoTwoEncoder is
     port(A, B, C, D, EN: in std_logic;
         Y1, Y0: out std_logic);
   end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: FourtoTwoEncoder 
			port map (
					-- order of inputs B A
					EN => input_vector(0),
					D => input_vector(1),
					C => input_vector(2),
					B => input_vector(3),
					A => input_vector(4),
               -- order of output OUTPUT
					Y1 => output_vector(1),
					Y0 => output_vector(0));
end DutWrap;