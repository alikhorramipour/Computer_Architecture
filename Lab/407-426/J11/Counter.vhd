----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:19:13 05/29/2019 
-- Design Name: 
-- Module Name:    Counter - Behavioral 
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

entity Counter2bit is
	port(
		CLR : in STD_LOGIC;
		CLocK : in STD_LOGIC;
		output : out STD_LOGIC_VECTOR (1 downto 0)
		);
end Counter2bit;

architecture Behavioral of Counter2bit is
signal tmp : STD_LOGIC_VECTOR (1 downto 0);
begin
process (clock, clr)
	begin
		if(clr = '1') then 
			tmp <= "00";
			output <= tmp;
		elsif (clock'event and (clock = '1')) then
				tmp <= tmp + 1;
				output <= tmp;
		end if;
	end process;
end Behavioral;

