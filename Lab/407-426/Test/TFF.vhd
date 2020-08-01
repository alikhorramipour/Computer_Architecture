----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:39:15 03/06/2019 
-- Design Name: 
-- Module Name:    TFF - Behavioral 
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

library IEEE;
entity TFF is
	port(
		T: in std_logic;
		Clock: in std_logic;
		Q: out std_logic);
	end TFF;
	
architecture Behavioral of TFF is
	signal tmp: std_logic;
	begin
		process (Clock)
			begin
				if Clock'event and Clock='1' then
					if T='0' then
						tmp <= tmp;
					elsif T='1' then
						tmp <= not (tmp);
					end if;
				end if;
		end process;
		Q <= tmp;
end Behavioral;