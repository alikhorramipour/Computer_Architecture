----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:49:50 04/15/2019 
-- Design Name: 
-- Module Name:    line3bit - Behavioral 
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

entity line3bit is
port(
A,B,C :in std_logic_vector(2 downto 0) ;
sum,cout:out  std_logic_vector(2 downto 0) 
); 
end line3bit;

architecture Behavioral of line3bit is
component FullAdder
port(
	A : in STD_LOGIC;
 B : in STD_LOGIC;
 Cin : in STD_LOGIC;
 S : out STD_LOGIC;
 Cout : out STD_LOGIC
);
end component;

begin
	F0:FullAdder port map(A(0),B(0),C(0),sum(0),cout(0)) ;
	F1:FullAdder port map(A(1),B(1),C(1),sum(1),cout(1)) ;
	F2:FullAdder port map(A(2),B(2),C(2),sum(2),cout(2)) ;
end Behavioral;

