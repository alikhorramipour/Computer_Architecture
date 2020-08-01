----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:37:24 04/10/2019 
-- Design Name: 
-- Module Name:    FourBitLine - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity FourBitLine is
port(
A,B :in std_logic_vector(3 downto 0) ;
sum:out  std_logic_vector(3 downto 0) ;
cout:out std_logic
); 
end FourBitLine;

architecture Behavioral of FourBitLine is
component FullAdder
port(
	 A : in STD_LOGIC;
 B : in STD_LOGIC;
 Cin : in STD_LOGIC;
 S : out STD_LOGIC;
 Cout : out STD_LOGIC
);
end component;

component HalfAdder
	port (
    i_bit1  : in std_logic;
    i_bit2  : in std_logic;
    --
    o_sum   : out std_logic;
    o_carry : out std_logic
);
end component;

signal c:std_logic_vector(3 downto 0) ;

begin

HA1:HalfAdder port map(a(0),b(0),cout,c(0)) ;
FA2:FullAdder port map(a(1),b(1),c(0),sum(0),c(1)) ;
FA3:FullAdder port map(a(2),b(2),c(1),sum(1),c(2)) ;
FA4:FullAdder port map(a(3),b(3),c(2),sum(2),sum(3)) ;

end Behavioral;

