library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity uni_shift is
  port(a: in std_logic_vector(7 downto 0); b: in std_logic_vector(2 downto 0); L: in std_logic; y: out std_logic_vector(7 downto 0));
end entity uni_shift;

architecture Struct of uni_shift is
  signal c,d,e,f: std_logic_vector(7 downto 0);
  
  component mux is
    port (i0,i1,s : in std_logic; y : out std_logic);
  end component;
  
  begin 
  
  bitr1 : for i in 0 to 7 generate
    L1: mux port map(i0 => a(i), i1 => a(7-i), s => L, y => c(i));
	 end generate;
  
  n4_bit : for i in 0 to 7 generate
    lsb: if i < 4 generate
    b2: mux port map(i0 => c(i), i1 => c(i+4), s => b(2), y => d(i));
    end generate lsb;
    msb: if i > 3 generate
    b2: mux port map(i0 => c(i), i1 => '0', s => b(2), y => d(i));
    end generate msb;
    end generate ;
  
  n2_bit : for i in 0 to 7 generate
    lsb: if i < 6 generate
    b1: mux port map(i0 => d(i), i1 => d(i+2), s => b(1), y => e(i));
    end generate lsb;
    msb: if i > 5 generate
    b1: mux port map(i0 => d(i), i1 => '0', s => b(1), y => e(i));
    end generate msb;
    end generate ;
  
  n1_bit : for i in 0 to 7 generate
    lsb: if i < 7 generate
    b0: mux port map(i0 => e(i), i1 => e(i+1), s => b(0), y => f(i));
    end generate lsb;
    msb: if i > 6 generate
    b0: mux port map(i0 => e(i), i1 => '0', s => b(0), y => f(i));
    end generate msb;
    end generate ;
  
  bitr2 : for i in 0 to 7 generate
    L2: mux port map(i0 => f(i), i1 => f(7-i), s => L, y => y(i));
	 end generate;
end Struct;