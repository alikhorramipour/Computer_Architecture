----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:49:56 03/06/2019 
-- Design Name: 
-- Module Name:    SeqDet1101Moore - Behavioral 
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

entity SeqDet1101Moore is
port(
	input : in std_logic ;
	output : out std_logic;
	clk : in std_logic
);
end SeqDet1101Moore;

architecture Behavioral of SeqDet1101Moore is
	type state_t is (s0 , s1 , s2, s3, s4);
	signal state : state_t := s0;
	signal next_state : state_t := s0;
	begin
		CMB : process(state , input)
			begin
			case state is
				when s0=>
					if(input = '1') then
						next_state <= s1;
					else
						next_state <= state ;
					end if;
				when s1=>
					if(input = '1') then
						next_state <= s2;
					else
						next_state <= state ;
					end if;
				when s2=>
					if(input = '0') then
						next_state <= s3;
					else
						next_state <= state ;
					end if;
				when s3=>
					if(input = '1') then
						next_state <= s4;
					else
						next_state <= state ;
					end if;
				when s4=>
					if(input = '1') then
						next_state <= s1;
					else
						next_state <= state ;
					end if;
				next_state <= s0;
			end case;
		end process;
		REG : process(clk)
		begin
			if(clk'event and clk = '1') then
				state <= next_state;
			end if;
	end process;
	output <= '1' when state = s4 else '0';
end Behavioral;