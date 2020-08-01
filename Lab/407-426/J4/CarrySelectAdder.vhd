----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:17:05 03/13/2019 
-- Design Name: 
-- Module Name:    CarrySelectAdder - Behavioral 
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


-- Delay:  10.739ns (Levels of Logic = 6)

entity CarrySelectAdder is
    Port ( a : in  STD_LOGIC_vector(3 downto 0);
           b : in  STD_LOGIC_vector(3 downto 0);
           cin : in  STD_LOGIC;
           cout : out  STD_LOGIC;
           s : out  STD_LOGIC_vector(3 downto 0));
end CarrySelectAdder;

architecture Behavioral of CarrySelectAdder is
component rippleadder is port(
			a : in  STD_LOGIC_vector(3 downto 0);
           b : in  STD_LOGIC_vector(3 downto 0);
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC_vector(3 downto 0);
           cout : out  STD_LOGIC);
			  end component;
			  
			  
signal h1, h2 : STD_LOGIC_vector(3 downto 0);
signal carry1, carry2 : STD_LOGIC;
begin
	m1 : rippleadder port map(a, b, '0', h1, carry1);
	m2 : rippleadder port map(a, b, '1', h2, carry2);
	
	s(0) <= (h1(0) and not cin ) or (h2(0) and cin);
	s(1) <= (h1(1) and not cin ) or (h2(1) and cin);
	s(2) <= (h1(2) and not cin ) or (h2(2) and cin);
	s(3) <= (h1(3) and not cin ) or (h2(3) and cin);
	cout <= (carry1 and not cin ) or (carry2 and cin);
end Behavioral;