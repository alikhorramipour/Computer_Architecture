----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:02:37 04/15/2019 
-- Design Name: 
-- Module Name:    carrymultiple - Behavioral 
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

entity carrymultiple is

port(A,B :in std_logic_vector(3 downto 0) ;
sum:out  std_logic_vector(7 downto 0)) ;

end carrymultiple;

architecture Behavioral of carrymultiple is

component fourbitmulti is
port( bit1:in std_logic ;
B :in std_logic_vector(3 downto 0) ;
sum:out  std_logic_vector(3 downto 0) );
end component;

component line3bit is
port(
A,B,C :in std_logic_vector(2 downto 0) ;
sum,cout:out  std_logic_vector(2 downto 0) 
); 
end component;

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

signal c00,c10,c20,c30,empty: std_logic_vector(3 downto 0) ;
signal inline20,inline21,inline30,inline31,inline40,inline41: std_logic_vector(3 downto 0) ;
signal carry1,carry2 :std_logic ;
begin

fb0:fourbitmulti port map(b(0),a,c00) ;
fb1:fourbitmulti port map(b(1),a,c10) ;
fb2:fourbitmulti port map(b(2),a,c20) ;
fb3:fourbitmulti port map(b(3),a,c30) ;
fb4:fourbitmulti port map('0',a,empty) ;

line1:line3bit port map(empty(2 downto 0),c00(3 downto 1),c10(2 downto 0),inline20(2 downto 0),inline21(3 downto 1)) ;
inline20(3) <= c10(3) ;
line2:line3bit port map(inline20(3 downto 1),inline21(3 downto 1),c20(2 downto 0),inline30(2 downto 0),inline31(3 downto 1)) ;
inline30(3) <= c20(3) ;
line3:line3bit port map(inline30(3 downto 1),inline31(3 downto 1),c30(2 downto 0),inline40(2 downto 0),inline41(3 downto 1)) ;

sum(0) <=c00(0) ;
sum(1) <= inline20(0) ;
sum(2) <= inline30(0) ;
sum(3) <= inline40(0) ;

H1 :HalfAdder port map(inline40(1) , inline41(1),sum(4),carry1) ;
F1 :FullAdder port map(inline40(2) , inline41(2) ,carry1,sum(5),carry2) ;
F2 :FullAdder port map(c30(3) , inline41(3) ,carry2,sum(6),sum(7)) ;


end Behavioral;

