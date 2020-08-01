----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:40:50 02/20/2019 
-- Design Name: 
-- Module Name:    and - Behavioral 
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
use IEEE.std_logic_1164.all;

Entity and_gate is
	Port(
		A, B: in std_logic;
		C : out std_logic
	);
End entity and_gate;
Architecture behavioral of and_gate is
Begin
	C <= A and B;
End behavioral;

