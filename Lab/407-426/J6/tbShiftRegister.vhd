--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:12:36 04/17/2019
-- Design Name:   
-- Module Name:   D:/407-426/J6/tbShiftRegister.vhd
-- Project Name:  J6
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ShiftRegister
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
 
ENTITY tbShiftRegister IS
END tbShiftRegister;
 
ARCHITECTURE behavior OF tbShiftRegister IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ShiftRegister
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         cmd : IN  std_logic_vector(1 downto 0);
         Load : IN  std_logic;
         Reset : IN  std_logic;
         CLK : IN  std_logic;
         F : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal cmd : std_logic_vector(1 downto 0) := (others => '0');
   signal Load : std_logic := '0';
   signal Reset : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal F : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ShiftRegister PORT MAP (
          A => A,
          cmd => cmd,
          Load => Load,
          Reset => Reset,
          CLK => CLK,
          F => F
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		Reset <= '0';
		wait for 5 ns;
Reset <= '1';
		Load <= '0';
		A <= "1011";
		cmd <= "00";
				
		wait for 20 ns;	
		Load <= '1';
		wait for 20 ns;	
		Load <= '0';
		cmd <= "01";
		
      wait for CLK_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;