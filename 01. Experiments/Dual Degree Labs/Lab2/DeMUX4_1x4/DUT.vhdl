-- A DUT entity is used to wrap your design so that we can combine it with testbench.
-- This example shows how you can do this for the OR Gate

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
    port(input_vector: in std_logic_vector(5 downto 0);
       	output_vector: out std_logic_vector(15 downto 0));
end entity;

architecture DutWrap of DUT is
   component demux4_1x4 is
     port(A3,A2,A1,A0,S1,S0: in std_logic;
         I15,I14,I13,I12,I11,I10,I9,I8,I7,I6,I5,I4,I3,I2,I1,I0: out std_logic);
   end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: demux4_1x4 
			port map (
					-- order of inputs B A
					A3 => input_vector(5),
					A2 => input_vector(4),
					A1 => input_vector(3),
					A0 => input_vector(2),
					S1 => input_vector(1),
					S0 => input_vector(0),
               -- order of output OUTPUT
					I15 => output_vector(15),
					I14 => output_vector(14),
					I13 => output_vector(13),
					I12 => output_vector(12),
					I11 => output_vector(11),
					I10 => output_vector(10),
					I9 => output_vector(9),
					I8 => output_vector(8),
					I7 => output_vector(7),
					I6 => output_vector(6),
					I5 => output_vector(5),
					I4 => output_vector(4),
					I3 => output_vector(3),
					I2 => output_vector(2),
					I1 => output_vector(1),
					I0 => output_vector(0));
end DutWrap;