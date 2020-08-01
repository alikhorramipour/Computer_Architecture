----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:49:37 05/29/2019 
-- Design Name: 
-- Module Name:    Pipelined - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Pipelined is
    Port ( A : in  STD_LOGIC_VECTOR(1 downto 0);
           B : in  STD_LOGIC_VECTOR(1 downto 0);
           C : in  STD_LOGIC_VECTOR(1 downto 0);
           Data : in  STD_LOGIC_VECTOR(1 downto 0);
           result : out  STD_LOGIC_VECTOR(7 downto 0);
           clock : in  STD_LOGIC;
           rst : in  STD_LOGIC);
end Pipelined;

architecture Behavioral of Pipelined is

	component DFF2bit is
    Port ( d : in  STD_LOGIC_VECTOR(1 downto 0);
           rst : in  STD_LOGIC;
           clock : in  STD_LOGIC;
           q : out  STD_LOGIC_VECTOR(1 downto 0));
	end component;

	component DFF4bit is
    Port ( d : in  STD_LOGIC_VECTOR(3 downto 0);
           rst : in  STD_LOGIC;
           clock : in  STD_LOGIC;
           q : out  STD_LOGIC_VECTOR(3 downto 0));
	end component;
	
	component Multiplier2x4 is
    Port ( A : in  STD_LOGIC_VECTOR(1 downto 0);
           B : in  STD_LOGIC_VECTOR(1 downto 0);
           result : out  STD_LOGIC_VECTOR(3 downto 0));
	end component;
	
	component Multiplier4x8 is
    Port ( A : in  STD_LOGIC_VECTOR(3 downto 0);
           B : in  STD_LOGIC_VECTOR(3 downto 0);
           result : out  STD_LOGIC_VECTOR(7 downto 0));
	end component;

	component DFF8bit is
    Port ( d : in  STD_LOGIC_VECTOR(7 downto 0);
           clock : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           q : out  STD_LOGIC_VECTOR(7 downto 0));
	end component;
	
	signal A_d, B_d, C_d, Data_d: STD_LOGIC_VECTOR(1 downto 0);
	signal AB, CD: STD_LOGIC_VECTOR(3 downto 0);
	signal AB_d, CD_d: STD_LOGIC_VECTOR(3 downto 0);
	signal ABCD_d: STD_LOGIC_VECTOR(7 downto 0);
	
	
begin

	FFA: DFF2bit port map (A, rst, clock, A_d);
	FFB: DFF2bit port map (B, rst, clock, B_d);
	FFC: DFF2bit port map (C, rst, clock, C_d);
	FFData: DFF2bit port map (Data, rst, clock, Data_d);
	
	Multiplier_AB: Multiplier2x4 port map (A_d, B_d, AB);
	Multiplier_CData: Multiplier2x4 port map (C_d, Data_d, CD);
	
	FFAB: DFF4bit port map (AB, rst, clock, AB_d);
	FFCData: DFF4bit port map (CD, rst, clock, CD_d);
	
	Multiplier_ABCData: Multiplier4x8 port map (AB_d, CD_d, ABCD_d);
	
	FFABCData: DFF8bit port map (ABCD_d, clock, rst, result);

end Behavioral;