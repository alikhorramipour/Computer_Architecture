----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:57:43 02/27/2019 
-- Design Name: 
-- Module Name:    MUX41 - Behavioral 
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

entity MUX41 is
    Port( 
			I0, I1, I2, I3, a, b : in  std_logic;
         O : out std_logic);
end MUX41;

architecture Behavioral of MUX41 is
	signal S0, S1, S2, S3 : std_logic;
		begin
			S0 <= (not a) and (not b) and I0;
			S1 <= a and (not b) and I1;
			S2 <= I2 and b and (not a);
			S3 <= I3 and b and a;
			O <= S0 or S1 or S2 or S3;
end Behavioral;