----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:42:07 05/01/2019 
-- Design Name: 
-- Module Name:    RAM - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RAM is
    Port ( WR : in  STD_LOGIC;
           RD : in  STD_LOGIC;
           Addr : in  STD_LOGIC_VECTOR (4 downto 0);
           Reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Data_in : in  STD_LOGIC_VECTOR (4 downto 0);
           Data_out : out  STD_LOGIC_VECTOR (4 downto 0));
end RAM;

architecture Behavioral of RAM is
type RAM_arry is array(31 downto 0 ) of std_logic_vector(4 downto 0);
signal ram: RAM_arry;
begin
		  
	process (clk) 

		begin
			if rising_edge(clk) then
			if reset ='1' then
			 for i in 0 to 31 loop
            ram(i) <= std_logic_vector(to_unsigned (i,5));
        end loop ;

				elsif RD = '1' and WR = '0' then 
					Data_out <= ram(to_integer(unsigned(Addr)));

					elsif RD = '0' and WR = '1' then 
					ram(to_integer(unsigned(Addr))) <= Data_in;
				end if;
					end if;
		
		end process ;


end Behavioral;

