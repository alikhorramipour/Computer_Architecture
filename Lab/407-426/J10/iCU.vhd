----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:07:36 05/22/2019 
-- Design Name: 
-- Module Name:    iCU - Behavioral 
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

entity iCU is
	port (
		input : in STD_LOGIC_VECTOR (15 downto 0);
		clk : in STD_LOGIC;
		s : out STD_LOGIC_VECTOR (2 downto 0);
		output : out STD_LOGIC_VECTOR (19 downto 0)
		);
end iCU;


architecture Behavioral of iCU is
	component Decoder3x8 is
		port(
			input : in STD_LOGIC_VECTOR (2 downto 0);
			output : out STD_LOGIC_VECTOR (7 downto 0)
		);
	end component;
	
	component Decoder4x16 is
		port(
			input : in STD_LOGIC_VECTOR (3 downto 0);
			output : out STD_LOGIC_VECTOR (15 downto 0)
		);
	end component;
	
	component Counter4bit is
		port(
			CLR : in STD_LOGIC;
			CLK : in STD_LOGIC;
			output : out STD_LOGIC_VECTOR (3 downto 0)
		);
	end component;
	
	signal D : STD_LOGIC_VECTOR (7 downto 0);
	signal T : STD_LOGIC_VECTOR (15 downto 0);
	signal counterOutput : STD_LOGIC_VECTOR (3 downto 0);
	signal miani : STD_LOGIC;
begin

D3x8 : Decoder3x8 port map (input (14 downto 12), D);
counter: Counter4bit port map (miani, clk, counterOutput);
D4x16 : Decoder4x16 port map (counterOutput, T);

process(clk, D, T)
	begin
		
		-- and
		if(D = "00000001" and T = "0000000000010000") then -- output 0
			output(0) <= '1';
			s <= "111";
		elsif (D = "00000001" and T = "0000000000100000") then -- output 1
			output(1) <= '1';
			miani <= '1';
		
		-- add
		elsif (D = "00000010" and T = "0000000000010000") then -- output 2
			output(2) <= '1';
			s <= "111";			
		elsif (D = "00000010" and T = "0000000000100000") then -- output 3
			output(3) <= '1';
			miani <= '1';
		
		-- lda
		elsif (D = "00000100" and T = "0000000000010000") then -- output 4
			output(4) <= '1';
			s <= "111";
		elsif (D = "00000100" and T = "0000000000100000") then -- output 5
			output(5) <= '1';
			miani <= '1';
		
		-- sta
		elsif (D = "00001000" and T = "0000000000010000") then -- output 6
			output(6) <= '1';
			s <= "111";
			miani <= '1';
		
		-- bun
		elsif (D = "00010000" and T = "0000000000010000") then -- output 7
			output(7) <= '1';
			miani <= '1';
		
		-- bsa
		elsif (D = "00100000" and T = "0000000000010000") then -- output 8
			output(8) <= '1';
			s <= "111";
		elsif (D = "00100000" and T = "0000000000010000") then -- output 9
			output(9) <= '1';
			miani <= '1';
		
		-- isz
		elsif (D = "01000000" and T = "0000000000010000") then -- output 10
			output(10) <= '1';
			s <= "111";
		elsif (D = "01000000" and T = "0000000000100000") then -- output 11
			output(11) <= '1';
		elsif (D = "01000000" and T = "0000000001000000") then -- output 12
			output(12) <= '1';
			s <= "111";
			miani <= '1';
		end if;	
		output(19) <= miani;
		miani <= '0';
	end process;
end Behavioral;