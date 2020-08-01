----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:49:08 04/10/2019 
-- Design Name: 
-- Module Name:    NormalMultiplier - Behavioral 
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

entity NormalMultiplier is
port(A,B :in std_logic_vector(3 downto 0) ;
sum:out  std_logic_vector(7 downto 0)) ;

end NormalMultiplier;

architecture Behavioral of NormalMultiplier is
component FourBitLine
port(
A,B :in std_logic_vector(3 downto 0) ;
sum:out  std_logic_vector(3 downto 0) ;
cout:out std_logic
); 
end component ;

component fourbitmulti is
port( bit1:in std_logic ;
B :in std_logic_vector(3 downto 0) ;
sum:out  std_logic_vector(3 downto 0) );
end component;

signal c10,c11,c20,c21,c30,c31: std_logic_vector(3 downto 0) ;
begin
fb1:fourbitmulti port map(b(1),a,c10) ;
fb2:fourbitmulti port map(b(2),a,c20) ;
fb3:fourbitmulti port map(b(3),a,c30) ;

c11(0) <= b(0) and a(1) ;
c11(1) <= b(0) and a(2) ;
c11(2) <= b(0) and a(3) ;
c11(3) <= '0' ;

fl1:FourBitLine port map(c11,c10,c21,sum(1)) ;

fl2:FourBitLine port map(c21,c20,c31,sum(2)) ;

fl3:FourBitLine port map(c31,c30,sum(7 downto 4),sum(3)) ;

sum(0) <= b(0) and a(0) ;
end Behavioral;

