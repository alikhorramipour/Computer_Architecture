----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:20:36 05/15/2019 
-- Design Name: 
-- Module Name:    CPU - Behavioral 
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
-- Minimal 8 Bit CPU
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use IEEE.NUMERIC_STD.ALL;

entity CPU8BIT2 is
port ( data: out std_logic_vector(7 downto 0);
		adress: out std_logic_vector(5 downto 0);
		oe: out std_logic;
		we: out std_logic; -- Asynchronous memory interface
		
		rst: in std_logic;
		clk: in std_logic);
	end;
architecture CPU_ARCH of CPU8BIT2 is
	signal akku: std_logic_vector(8 downto 0); -- akku(8) is carry !
	signal adreg: std_logic_vector(5 downto 0);
	signal pc: std_logic_vector(5 downto 0);
	signal states: std_logic_vector(2 downto 0);
	type ram_array is array(31 downto 0) of std_logic_vector(7 downto 0);
	signal RAM: ram_array;
	
	begin
		RAM(0) <= "11000011";
		RAM(1) <= "01000100";
		RAM(2) <= "01000000";
		RAM(3) <= "11000010";
		RAM(4) <= "00000011";
		Process(clk,rst)
		variable dataI: std_logic_vector(7 downto 0);
		begin
		If (rst = '0') then
			adreg <= (others => '0'); -- start execution at memory location 0
			states <= "000";
			akku <= (others => '0');
			pc <= (others => '0');
			elsIf rising_edge(clk) then
			-- PC / Adress path
				If (states = "00") then
					dataI := RAM(to_integer(unsigned(PC)));
					pc <= adreg + 1;
					adreg <= dataI(5 downto 0);
				else
					dataI := RAM(to_integer(unsigned(adreg)));
					adreg <= pc;
				end If;
			-- ALU / Data Path
			Case states is
				when "010" => akku <= ("0" & akku(7 downto 0)) + ("0" & dataI); -- add
				when "011" => akku(7 downto 0) <= akku(7 downto 0) nor dataI; -- nor
				when "101" => akku(8) <= '0'; -- branch not taken, clear carry
				when others => null; -- instr. fetch, jcc taken (000), sta (001)
			end Case;
			-- State machine
			If (states /= "000") then states <= "000"; -- fetch next opcode
			elsIf (dataI(7 downto 6) = "11" and akku(8)='1') then states <= "101"; -- branch not taken
			else states <= "0" & not dataI(7 downto 6); -- execute instruction
			end If;
		end If;
	end Process;
	-- output
	adress <= adreg;
	data <= "ZZZZZZZZ" when states /= "001" else akku(7 downto 0);
	oe <= '1' when (clk='1' or states = "001" or rst='0' or states = "101") else '0';
	-- no memory access during reset and state "101" (branch not taken)
	we <= '1' when (clk='1' or states /= "001" or rst='0') else '0';
end CPU_ARCH;
