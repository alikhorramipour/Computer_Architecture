----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:47:37 05/29/2019 
-- Design Name: 
-- Module Name:    notPipelined - Behavioral 
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
-- arithmetic functions with Signed or unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity notPipelined is
	port(
		clock : in std_logic;
		a : in std_logic_vector (1 downto 0);
		b : in std_logic_vector (1 downto 0);
		c : in std_logic_vector (1 downto 0);
		data : in std_logic_vector (1 downto 0);
		result : out std_logic_vector (7 downto 0)
	);
end notPipelined;

architecture Behavioral of notPipelined is
	begin
	Process (clock) 
	Begin
	If rising_edge (clock)then
		--multiplication is done in a single stage.
		result <= STD_LOGIC_VECTOR(unsigned(a) * unsigned(b) * unsigned(c) * unsigned(data));
	end If;
	End Process;
end Behavioral;