----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:41:02 02/20/2019 
-- Design Name: 
-- Module Name:    xor - Behavioral 
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

Entity xor_gate is
	Port(
		A, B: in std_logic;
		C : out std_logic
	);
End entity xor_gate;

Architecture behavioral of xor_gate is
Begin
	C <= A xor B;
End behavioral;

