----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:23:05 05/29/2019 
-- Design Name: 
-- Module Name:    Pip - Behavioral 
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

entity Pip is
Port ( 
			A0 : in  STD_LOGIC_VECTOR(1 downto 0);
			A1 : in  STD_LOGIC_VECTOR(1 downto 0);
			A2 : in  STD_LOGIC_VECTOR(1 downto 0);
			A3 : in  STD_LOGIC_VECTOR(1 downto 0);
           B0 : in  STD_LOGIC_VECTOR(1 downto 0);
           B1 : in  STD_LOGIC_VECTOR(1 downto 0);
           B2 : in  STD_LOGIC_VECTOR(1 downto 0);
           B3 : in  STD_LOGIC_VECTOR(1 downto 0);
           C0 : in  STD_LOGIC_VECTOR(1 downto 0);
           C1 : in  STD_LOGIC_VECTOR(1 downto 0);
           C2 : in  STD_LOGIC_VECTOR(1 downto 0);
           C3 : in  STD_LOGIC_VECTOR(1 downto 0);
           Data0 : in  STD_LOGIC_VECTOR(1 downto 0);
           Data1 : in  STD_LOGIC_VECTOR(1 downto 0);
           Data2 : in  STD_LOGIC_VECTOR(1 downto 0);
           Data3 : in  STD_LOGIC_VECTOR(1 downto 0);
           result : out  STD_LOGIC_VECTOR(7 downto 0);
           clock : in  STD_LOGIC;
           rst : in  STD_LOGIC);
end Pip;

architecture Behavioral of Pip is

component Pipelined is
    Port ( A : in  STD_LOGIC_VECTOR(1 downto 0);
           B : in  STD_LOGIC_VECTOR(1 downto 0);
           C : in  STD_LOGIC_VECTOR(1 downto 0);
           Data : in  STD_LOGIC_VECTOR(1 downto 0);
           result : out  STD_LOGIC_VECTOR(7 downto 0);
           clock : in  STD_LOGIC;
           rst : in  STD_LOGIC);
end component;

component MUX4x1 is
    Port(
			I0, I1, I2, I3, s : in  std_logic_vector (1 downto 0);
         O : out std_logic_vector (1 downto 0));
end component;

component Counter2bit is
	port(
		CLR : in STD_LOGIC;
		CLocK : in STD_LOGIC;
		output : out STD_LOGIC_VECTOR (1 downto 0)
		);
end component;

signal counterO : std_logic_vector (1 downto 0);

signal mxaO : std_logic_vector (1 downto 0);
signal mxbO : std_logic_vector (1 downto 0);
signal mxcO : std_logic_vector (1 downto 0);
signal mxdO : std_logic_vector (1 downto 0);

signal rphil : std_logic_vector (7 downto 0);


begin

counter: Counter2bit port map (rst,clock,counterO);

MXA: MUX4x1 port map (A0, A1, A2, A3, counterO, mxaO);
MXB: MUX4x1 port map (B0, B1, B2, B3, counterO, mxbO);
MXC: MUX4x1 port map (C0, C1, C2, C3, counterO, mxcO);
MXD: MUX4x1 port map (Data0, Data1, Data2, Data3, counterO, mxdO);


pipeline: Pipelined port map (mxaO, mxbO, mxcO, mxdO, rphil, clock, rst);
result <= rphil;

end Behavioral;