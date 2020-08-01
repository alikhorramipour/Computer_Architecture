--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:58:36 05/01/2019
-- Design Name:   
-- Module Name:   D:/407-426/RAM_tb.vhd
-- Project Name:  Memory
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RAM
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
 
ENTITY RAM_tb IS
END RAM_tb;
 
ARCHITECTURE behavior OF RAM_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RAM
    PORT(
         WR : IN  std_logic;
         RD : IN  std_logic;
         Addr : IN  std_logic_vector(4 downto 0);
         Reset : IN  std_logic;
         clk : IN  std_logic;
         Data_in : IN  std_logic_vector(4 downto 0);
         Data_out : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal WR : std_logic := '0';
   signal RD : std_logic := '0';
   signal Addr : std_logic_vector(4 downto 0) := (others => '0');
   signal Reset : std_logic := '0';
   signal clk : std_logic := '0';
   signal Data_in : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal Data_out : std_logic_vector(4 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RAM PORT MAP (
          WR => WR,
          RD => RD,
          Addr => Addr,
          Reset => Reset,
          clk => clk,
          Data_in => Data_in,
          Data_out => Data_out
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
		Reset <= '1';
     wait for 100 ns;	
		Reset <= '0';
		RD <= '1';
		Addr <= "00011"; 
		wait for 100 ns;	
		RD <= '0';
		WR <= '1';
		Addr <= "00011";
		Data_in <= "11111";
		wait for 100 ns;	
		RD <= '1';
		WR <= '0';
		Addr <= "00011";

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
