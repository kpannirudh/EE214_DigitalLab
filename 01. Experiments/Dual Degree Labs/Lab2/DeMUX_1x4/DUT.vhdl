-- A DUT entity is used to wrap your design so that we can combine it with testbench.
-- This example shows how you can do this for the OR Gate

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
    port(input_vector: in std_logic_vector(2 downto 0);
       	output_vector: out std_logic_vector(3 downto 0));
end entity;

architecture DutWrap of DUT is
   component demux_1x4 is
     port(S2,S1,D: in std_logic;
         I0,I1,I2,I3: out std_logic);
   end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: demux_1x4 
			port map (
					-- order of inputs B A
					S2 => input_vector(2),
					S1 => input_vector(1),
					D => input_vector(0),
               -- order of output OUTPUT
					I3 => output_vector(3),
					I2 => output_vector(2),
					I1 => output_vector(1),
					I0 => output_vector(0));
end DutWrap;