--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:22:10 05/22/2019
-- Design Name:   
-- Module Name:   D:/407 - 426/J10/tbiCU.vhd
-- Project Name:  J10
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: iCU
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tbiCU IS
END tbiCU;
 
ARCHITECTURE behavior OF tbiCU IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT iCU
    PORT(
         input : IN  std_logic_vector(15 downto 0);
         clk : IN  std_logic;
         s : OUT  std_logic_vector(2 downto 0);
         output : OUT  std_logic_vector(19 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal input : std_logic_vector(15 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal s : std_logic_vector(2 downto 0);
   signal output : std_logic_vector(19 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: iCU PORT MAP (
          input => input,
          clk => clk,
          s => s,
          output => output
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;
		input <= "1000000000000000";

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
