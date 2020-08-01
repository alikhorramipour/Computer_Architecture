----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:16:36 03/13/2019 
-- Design Name: 
-- Module Name:    CarryLookaheadAdder - Behavioral 
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

-- Delay:  11.897ns (Levels of Logic = 6)

entity lookahead is
    Port ( a : in  STD_LOGIC_vector(3 downto 0);
           b : in  STD_LOGIC_vector(3 downto 0);
           cin : in  STD_LOGIC;
           cout : out  STD_LOGIC;
           s : out  STD_LOGIC_vector(3 downto 0));
end lookahead;

architecture Behavioral of lookahead is
component fulladder is port(
				a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
			  cout: out  STD_LOGIC;
           sum: out  STD_LOGIC);
end component ;

signal c1,c2,c3,nothing1,nothing2,nothing3:std_logic;
signal p,g:std_logic_vector(3 downto 0);
	begin
		p(0)<=a(0) xor b(0);
		p(1)<=a(1) xor b(1);
		p(2)<=a(2) xor b(2);
		p(3)<=a(3) xor b(3);

		g(0)<=a(0) and b(0);
		g(1)<=a(1) and b(1);
		g(2)<=a(2) and	b(2);
		g(3)<=a(3) and b(3);

		c1<=g(0) or (p(0) and cin);
		c2<= g(1) or (p(1) and g(0) ) or (p(1) and p(0) and cin );
		c3<=g(2) or (p(2) and g(1) ) or (p(2) and p(1) and g(0) ) or(p(2) and p(1) and p(0) and cin);
		
		m1:fulladder port map(a(0),b(0),cin,nothing1,s(0));
		m2:fulladder port map(a(1),b(1),c1,nothing2,s(1));
		m3:fulladder port map(a(2),b(2),c2,nothing3,s(2));
		m4:fulladder port map(a(3),b(3),c3,cout,s(3));

end Behavioral;