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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TFF is
    Port ( 
		reset : in  STD_LOGIC;
		t : in  STD_LOGIC;
      clock : in  STD_LOGIC;
      q : inout  STD_LOGIC);
end TFF;

architecture Behavioral of TFF is
signal tmp : std_logic;
	begin
	tmp <= q;
		process(clock, reset)
			begin
			if (reset = '1') then
				q <= '0';
			elsif (clock = '0')then
				q <= (t xor q) ;
			end if ;
	end process;

end Behavioral;