----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:22:07 05/01/2019
-- Design Name: 
-- Module Name:    CAM - Behavioral 
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

entity CAM is
    Port ( RD : in  STD_LOGIC;
           WR : in  STD_LOGIC;
           Data_in : in  STD_LOGIC_VECTOR (4 downto 0);
           Match : out  STD_LOGIC;
           Reset : in  STD_LOGIC;
           clk : in  STD_LOGIC);
end CAM;

architecture Behavioral of CAM is
type RAM_arry is array(31 downto 0 ) of std_logic_vector(5 downto 0);
signal ram: RAM_arry;
begin
		  
	process (clk) 

		begin
			if rising_edge(clk) then
			if reset ='1' then
			 for i in 0 to 31 loop
				--ram(i) <=std_logic_vector(to_unsigned (i,6));
            ram(i)(5) <= '0';
        end loop ;

				elsif RD = '1' and WR = '0' then 
					for i in 0 to 31 loop
						if ram(i)(4 downto 0) = Data_in then
							Match <= '1';
							exit;
						else 
							Match <= '0';
						end if;
					end loop ;
					elsif RD = '0' and WR = '1' then 
						for i in 0 to 31 loop
						if ram(i)(5) = '0'  then
							ram(i)(4 downto 0) <= Data_in;
							ram(i)(5) <= '1';
							exit;
							else 
								ram(31)(4 downto 0) <= Data_in;
						
						end if;
					end loop ;

				end if;
					end if;
		
		end process ;
end Behavioral;

