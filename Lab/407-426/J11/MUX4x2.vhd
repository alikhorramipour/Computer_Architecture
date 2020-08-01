----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:07:10 05/29/2019 
-- Design Name: 
-- Module Name:    MUX4x1 - Behavioral 
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


entity MUX4x1 is
    Port(
			I0, I1, I2, I3, s : in  std_logic_vector (1 downto 0);
         O : out std_logic_vector (1 downto 0));
end MUX4x1;

architecture Behavioral of MUX4x1 is
		begin
			process(s)
				begin
					if(s = "00") then
						O <= I0;
					elsif(s = "01") then
						O <= I1;
					elsif(s = "10") then
						O <= I2;
					elsif(s = "11") then
						O <= I3;
					end if;
			end process;
end Behavioral;