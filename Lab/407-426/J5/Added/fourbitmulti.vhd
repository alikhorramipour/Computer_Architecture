----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:59:18 04/10/2019 
-- Design Name: 
-- Module Name:    fourbitmulti - Behavioral 
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

entity fourbitmulti is
port( bit1:in std_logic ;
B :in std_logic_vector(3 downto 0) ;
sum:out  std_logic_vector(3 downto 0) );

end fourbitmulti;

architecture Behavioral of fourbitmulti is
begin
sum(0) <= b(0) and bit1 ;
sum(1) <= b(1) and bit1 ;
sum(2) <= b(2) and bit1 ;
sum(3) <= b(3) and bit1 ;


end Behavioral;

