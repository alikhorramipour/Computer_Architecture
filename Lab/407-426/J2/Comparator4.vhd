----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:07:18 02/27/2019 
-- Design Name: 
-- Module Name:    Comparator4 - Behavioral 
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

entity Comparator4 is
    Port( 
			A, B : in  std_logic_vector (3 downto 0);
         G, E, L : out std_logic);
end Comparator4;

architecture Behavioral of Comparator4 is
	begin
		process(A, B) begin
			if(A > B) then
				G <= '1';
				E <= '0';
				L <= '0';
			elsif(A = B) then
				G <= '0';
				E <= '1';
				L <= '0';
			else
				G <= '0';
				E <= '0';
				L <= '1';
			end if;
		end process;
end Behavioral;