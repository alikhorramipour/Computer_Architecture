----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:03:07 02/27/2019 
-- Design Name: 
-- Module Name:    Encoder42 - Behavioral 
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

entity Encoder42 is
    Port( 
			I0, I1, I2, I3 : in  std_logic;
         O0, O1 : out std_logic);
end Encoder42;

architecture Behavioral of Encoder42 is
	signal S0, S1, S2, S3 : std_logic;
		begin
			O0 <= I3 or I1;
			O1 <= (not I1) and (not I0);
end Behavioral;