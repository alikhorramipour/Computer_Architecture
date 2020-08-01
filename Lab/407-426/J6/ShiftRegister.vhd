----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:40:45 04/17/2019 
-- Design Name: 
-- Module Name:    ShiftRegister - Behavioral 
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

entity ShiftRegister is 
   port(
      A : in std_logic_vector(3 downto 0);
		cmd : in std_logic_vector(1 downto 0) ;
      Load : in  std_logic;
		Reset : in  std_logic;
		CLK : in  std_logic;
		
		F : out std_logic_vector (3 downto 0)
   );
end ShiftRegister;

architecture Behavioral of ShiftRegister is
	component DFF is
	port(
      Q : out std_logic;    
      Clk : in std_logic;  
		async_reset : in std_logic;  
      D : in  std_logic    
   );
	end component;

signal ATmp,FTmp:std_logic_vector( 3 downto 0 );
signal Clock:std_logic;
begin
	DFF0 : DFF port map(FTmp(0), Clock, Reset, ATmp(0));
	DFF1 : DFF port map(FTmp(1), Clock, Reset, ATmp(1));
	DFF2 : DFF port map(FTmp(2), Clock, Reset, ATmp(2));
	DFF3 : DFF port map(FTmp(3), Clock, Reset, ATmp(3));
	
	
	process(Load, Clock)
		begin
			if Load = '1' then
				ATmp <= A;
			else
				if cmd = "01" then
				ATmp(0) <=FTmp(0);
				ATmp(1) <=FTmp(0);
				ATmp(2) <=FTmp(1);
				ATmp(3) <=FTmp(2);
					elsif cmd = "10" then 
				ATmp(0) <= '0';
				ATmp(1) <=FTmp(0);
				ATmp(2) <=FTmp(1);
				ATmp(3) <=FTmp(2);
					elsif cmd = "11" then 
				ATmp(0) <=FTmp(1);
				ATmp(1) <=FTmp(2);
				ATmp(2) <=FTmp(3);
				ATmp(3) <= '0';
					elsif cmd="00" then
							ATmp(0) <= FTmp(0);
							ATmp(1) <=FTmp(1);
							ATmp(2) <=FTmp(2);
							ATmp(3) <=FTmp(3);
				end if;
			end if;
		end process;
	process(FTmp)
		begin
			F <= FTmp;
		end process;
end Behavioral;

