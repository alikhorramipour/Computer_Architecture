----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:40:02 02/20/2019 
-- Design Name: 
-- Module Name:    or - Behavioral 
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

Entity or_gate is
Port(
	A, B: in std_logic;
	C : out std_logic
	);
End entity or_gate;

Architecture behavioral of or_gate is
Begin
	C <= A or B;
End behavioral;

