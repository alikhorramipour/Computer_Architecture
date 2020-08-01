--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:38:51 05/29/2019
-- Design Name:   
-- Module Name:   D:/407 - 426/J11/tbPip.vhd
-- Project Name:  J11
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Pip
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
 
ENTITY tbPip IS
END tbPip;
 
ARCHITECTURE behavior OF tbPip IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Pip
    PORT(
         A0 : IN  std_logic_vector(1 downto 0);
         A1 : IN  std_logic_vector(1 downto 0);
         A2 : IN  std_logic_vector(1 downto 0);
         A3 : IN  std_logic_vector(1 downto 0);
         B0 : IN  std_logic_vector(1 downto 0);
         B1 : IN  std_logic_vector(1 downto 0);
         B2 : IN  std_logic_vector(1 downto 0);
         B3 : IN  std_logic_vector(1 downto 0);
         C0 : IN  std_logic_vector(1 downto 0);
         C1 : IN  std_logic_vector(1 downto 0);
         C2 : IN  std_logic_vector(1 downto 0);
         C3 : IN  std_logic_vector(1 downto 0);
         Data0 : IN  std_logic_vector(1 downto 0);
         Data1 : IN  std_logic_vector(1 downto 0);
         Data2 : IN  std_logic_vector(1 downto 0);
         Data3 : IN  std_logic_vector(1 downto 0);
         result : OUT  std_logic_vector(7 downto 0);
         clock : IN  std_logic;
         rst : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A0 : std_logic_vector(1 downto 0) := (others => '0');
   signal A1 : std_logic_vector(1 downto 0) := (others => '0');
   signal A2 : std_logic_vector(1 downto 0) := (others => '0');
   signal A3 : std_logic_vector(1 downto 0) := (others => '0');
   signal B0 : std_logic_vector(1 downto 0) := (others => '0');
   signal B1 : std_logic_vector(1 downto 0) := (others => '0');
   signal B2 : std_logic_vector(1 downto 0) := (others => '0');
   signal B3 : std_logic_vector(1 downto 0) := (others => '0');
   signal C0 : std_logic_vector(1 downto 0) := (others => '0');
   signal C1 : std_logic_vector(1 downto 0) := (others => '0');
   signal C2 : std_logic_vector(1 downto 0) := (others => '0');
   signal C3 : std_logic_vector(1 downto 0) := (others => '0');
   signal Data0 : std_logic_vector(1 downto 0) := (others => '0');
   signal Data1 : std_logic_vector(1 downto 0) := (others => '0');
   signal Data2 : std_logic_vector(1 downto 0) := (others => '0');
   signal Data3 : std_logic_vector(1 downto 0) := (others => '0');
   signal clock : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal result : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Pip PORT MAP (
          A0 => A0,
          A1 => A1,
          A2 => A2,
          A3 => A3,
          B0 => B0,
          B1 => B1,
          B2 => B2,
          B3 => B3,
          C0 => C0,
          C1 => C1,
          C2 => C2,
          C3 => C3,
          Data0 => Data0,
          Data1 => Data1,
          Data2 => Data2,
          Data3 => Data3,
          result => result,
          clock => clock,
          rst => rst
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		rst <= '1';
		
		wait for 100 ns;
		
		rst <= '0';
		
		wait for 100 ns;
		
		a0 <= "10";
		b0 <= "01";
		c0 <= "11";
		data0 <= "10";
		
		a1 <= "10";
		b1 <= "01";
		c1 <= "11";
		data1 <= "01";
		
		a2 <= "10";
		b2 <= "01";
		c2 <= "01";
		data2 <= "10";
		
		a3 <= "01";
		b3 <= "01";
		c3 <= "01";
		data3 <= "01";
      
		wait for 100 ns;	

      wait for clock_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
