----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:37:52 04/17/2019 
-- Design Name: 
-- Module Name:    DFlipFlop - Behavioral 
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

entity DFlipFlop is
    Port ( D : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  reset : in STD_LOGIC;
           Q : out  STD_LOGIC;
			  Qnot : out STD_LOGIC);
end DFlipFlop;

architecture Behavioral of DFlipFlop is

	type state_t is (s0, s1);
	signal state : state_t := s0;
	signal next_state : state_t := s0;
	signal Qtmp : STD_LOGIC;

begin

	CMB : process(state, D)
		begin			
			case state is
				when s0 =>
					if (D = '0') then
						next_state <= s1;
					else
						next_state <= state;
					end if;
				when s1 =>
					if (D = '1') then
						next_state <= s0;
					else
						next_state <= state;
					end if;
				when others =>
					next_state <= s0;
			end case;
	end process;

	REG : process(clk, reset)
		begin			
			if (clk'event and clk = '1') then
				if (reset = '1') then
					state <= s0;
					Qtmp <= '0';
					Q <= Qtmp;
					Qnot <= not(Qtmp);
				end if;
				
				state <= next_state;
				if (state = s0) then 
					Qtmp <= '0';
				else
					Qtmp <= '1';
				end if;
				Q <= Qtmp;
				Qnot <= not(Qtmp);
			end if;
	end process;
end Behavioral;

