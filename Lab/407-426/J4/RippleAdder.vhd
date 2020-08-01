----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:11:22 03/13/2019 
-- Design Name: 
-- Module Name:    RippleAdder - Behavioral 
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


--Delay : 12.008ns (Levels of Logic = 6)
entity rippleAdder is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC_VECTOR (3 downto 0);
           cout : out  STD_LOGIC);
end rippleAdder;

architecture Behavioral of rippleAdder is
	component fullAdder is
		Port ( A : in  STD_LOGIC;
				B : in  STD_LOGIC;
				Cin : in  STD_LOGIC;
				Sum : out  STD_LOGIC;
				Cout : out  STD_LOGIC);
end component fullAdder;

signal w : std_logic_vector(2 downto 0);
signal s : std_logic_vector(3 downto 0);
	begin
		FA0: fullAdder port map(A(0), B(0), cin, s(0), w(0));
		sum(0) <= s(0);
		FA1: fullAdder port map(A(1), B(1), w(0), s(1), w(1));
		sum(1) <= s(1);
		FA2: fullAdder port map(A(2), B(2), w(1), s(2), w(2));
		sum(2) <= s(2);
		FA3: fullAdder port map(A(3), B(3), w(2), s(3), cout);
		sum(3) <= s(3);
end Behavioral;