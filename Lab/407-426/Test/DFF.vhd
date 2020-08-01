----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:37:47 03/06/2019 
-- Design Name: 
-- Module Name:    DFF - Behavioral 
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

entity DFF is 
   port(
      Q : out std_logic;    
      Clk :in std_logic;  
		sync_reset: in std_logic;  
      D :in  std_logic    
   );
end DFF;

architecture Behavioral of DFF is  
begin  
	process(Clk,sync_reset)
	begin 
		if(sync_reset='0') then 
			Q <= '0';
		elsif(rising_edge(Clk)) then
			Q <= D; 
		end if;      
	end process;  
end Behavioral; 

