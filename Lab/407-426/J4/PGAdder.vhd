----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:18:57 03/13/2019 
-- Design Name: 
-- Module Name:    PGAdder - Behavioral 
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

entity PGAdder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           P: out  STD_LOGIC;
			  G: out  STD_LOGIC;
			  S: out  STD_LOGIC);
end PGAdder;

architecture Behavioral of PGAdder is
	signal S1, S2, S3 : std_logic;
	begin
		S1 <= A xor B;

		P <= A or B;
		G <= A and B;
		S <= S1 xor Cin;
end Behavioral;