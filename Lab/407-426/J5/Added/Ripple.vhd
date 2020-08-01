----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:38:54 03/11/2019 
-- Design Name: 
-- Module Name:    Ripple - Behavioral 
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

entity Ripple is
port (
A,B :in std_logic_vector(3 downto 0) ;
sum:out  std_logic_vector(4 downto 0) 
);
end Ripple;
architecture Behavioral of Ripple is
component FullAdder
 Port ( A : in STD_LOGIC;
 B : in STD_LOGIC;
 Cin : in STD_LOGIC;
 S : out STD_LOGIC;
 Cout : out STD_LOGIC);

end component;

signal c:std_logic_vector(3 downto 0) ;
begin
FA1:FullAdder port map(a(0),b(0),'0',sum(0),c(0)) ;
FA2:FullAdder port map(a(1),b(1),c(0),sum(1),c(1)) ;
FA3:FullAdder port map(a(2),b(2),c(1),sum(2),c(2)) ;
FA4:FullAdder port map(a(3),b(3),c(2),sum(3),sum(4)) ;

end Behavioral;

