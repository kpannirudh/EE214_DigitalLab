-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(3 downto 0);
       	output_vector: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is
	component Serial_Adder is
		port (reset, a, b, clock: in std_logic; s: out std_logic);
	end component;
begin

   -- A/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: Serial_Adder 
			port map (
					-- order of As Cin B A
					reset => input_vector(3),
					a => input_vector(2),
					b => input_vector(1),
					clock   => input_vector(0),
                                        -- order of outputs S Cout
					s => output_vector(0));

end DutWrap;

