----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:33:15 05/29/2019 
-- Design Name: 
-- Module Name:    Multiplier - Behavioral 
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

entity Multiplier is
    Port ( A : in  STD_LOGIC_VECTOR(1 downto 0);
           B : in  STD_LOGIC_VECTOR(1 downto 0);
           C : in  STD_LOGIC_VECTOR(1 downto 0);
           Data : in  STD_LOGIC_VECTOR(1 downto 0);
           result : out  STD_LOGIC_VECTOR(7 downto 0));
end Multiplier;

architecture Behavioral of multiplier is
begin
	result <= STD_LOGIC_VECTOR(unsigned(A) * unsigned(B) * unsigned(C) * unsigned(Data));
end Behavioral;
