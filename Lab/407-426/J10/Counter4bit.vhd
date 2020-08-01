----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:40:19 05/22/2019 
-- Design Name: 
-- Module Name:    Counter4bit - Behavioral 
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
use IEEE.STD_LOGIC_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Counter4bit is
	port(
		CLR : in STD_LOGIC;
		CLK : in STD_LOGIC;
		output : out STD_LOGIC_VECTOR (3 downto 0)
		);
end Counter4bit;

architecture Behavioral of Counter4bit is
signal tmp : STD_LOGIC_VECTOR (3 downto 0);
begin
process (clk, clr)
	begin
		if(clr = '1') then 
			tmp <= "0000";
			output <= tmp;
		elsif (clk'event and (clk = '1')) then
				tmp <= tmp + 1;
				output <= tmp;
		end if;
	end process;
end Behavioral;