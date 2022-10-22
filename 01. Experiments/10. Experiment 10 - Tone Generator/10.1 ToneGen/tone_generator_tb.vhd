LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity tone_generator_tb is
end entity tone_generator_tb;

architecture bhv of tone_generator_tb is
component tone_generator is
port (clk_out : out std_logic_vector(7 downto 0);
		clk_50 : in std_logic);
end component tone_generator;

signal clk_50 : std_logic := '1';
signal clk_out : std_logic_vector(7 downto 0) := "11111111";
constant clk_period : time := 20 ns;
begin
	dut_instance: tone_generator port map(clk_out, clk_50);
	clk_50 <= not clk_50 after clk_period/2 ;
end bhv;
	

