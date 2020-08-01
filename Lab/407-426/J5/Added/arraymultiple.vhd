----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:58:22 04/15/2019 
-- Design Name: 
-- Module Name:    arraymultiple - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity arraymultiple is

port(A,B :in std_logic_vector(3 downto 0) ;
sum:out  std_logic_vector(7 downto 0)) ;

end arraymultiple;

architecture Behavioral of arraymultiple is

component fourbitmulti is
port( bit1:in std_logic ;
B :in std_logic_vector(3 downto 0) ;
sum:out  std_logic_vector(3 downto 0) );
end component;

component Ripple is
port (
A,B :in std_logic_vector(3 downto 0) ;
sum:out  std_logic_vector(4 downto 0) 
);
end component;

signal c00,c10,c20,c30: std_logic_vector(3 downto 0) ;
signal c01,c11,c21: std_logic_vector(4 downto 0) ;
begin
c01(3 downto 0) <= a(3 downto 0) ;
c01(4) <='0' ;
sum(0) <=a(0) and b(0) ;
fb0:fourbitmulti port map(b(0),c01(4 downto 1),c00) ;
fb1:fourbitmulti port map(b(1),a,c10) ;
fb2:fourbitmulti port map(b(2),a,c20) ;
fb3:fourbitmulti port map(b(3),a,c30) ;

adder1 : Ripple port map(c00,c10,c11) ;
sum(1) <=c11(0) ;
adder2 : Ripple port map(c11(4 downto 1),c20,c21) ;
sum(2) <=c21(0) ;
adder3 : Ripple port map(c21(4 downto 1),c30,sum(7 downto 3)) ;


end Behavioral;

