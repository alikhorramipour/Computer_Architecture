----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:41:51 05/29/2019 
-- Design Name: 
-- Module Name:    DFF2bit - Behavioral 
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

entity DFF2bit is
    Port ( d : in  STD_LOGIC_VECTOR(1 downto 0);
           rst : in  STD_LOGIC;
           clock : in  STD_LOGIC;
           q : out  STD_LOGIC_VECTOR(1 downto 0));
end DFF2bit;

architecture Behavioral of DFF2bit is
begin
	process(clock, rst)
	begin
		if (rst = '1') then
			q <= "00";
		elsif (rising_edge(clock)) then
			q <= d;
		end if;
	end process;
end Behavioral;