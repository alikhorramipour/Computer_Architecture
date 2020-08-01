--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:58:07 05/29/2019
-- Design Name:   
-- Module Name:   D:/407 - 426/J11/muxtb.vhd
-- Project Name:  J11
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MUX4x1
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
 
ENTITY muxtb IS
END muxtb;
 
ARCHITECTURE behavior OF muxtb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX4x1
    PORT(
         I0 : IN  std_logic_vector(1 downto 0);
         I1 : IN  std_logic_vector(1 downto 0);
         I2 : IN  std_logic_vector(1 downto 0);
         I3 : IN  std_logic_vector(1 downto 0);
         s : IN  std_logic_vector(1 downto 0);
         O : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I0 : std_logic_vector(1 downto 0) := (others => '0');
   signal I1 : std_logic_vector(1 downto 0) := (others => '0');
   signal I2 : std_logic_vector(1 downto 0) := (others => '0');
   signal I3 : std_logic_vector(1 downto 0) := (others => '0');
   signal s : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal O : std_logic_vector(1 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX4x1 PORT MAP (
          I0 => I0,
          I1 => I1,
          I2 => I2,
          I3 => I3,
          s => s,
          O => O
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		I0 <= "00";
		I1 <= "01";
		I2 <= "10";
		I3 <= "11";
		
		s <= "00";
		wait for 100 ns;	
		s <= "01";
		wait for 100 ns;	
		s <= "10";
		wait for 100 ns;	
		s <= "11";
		wait for 100 ns;	
		


      -- insert stimulus here 

      wait;
   end process;

END;
