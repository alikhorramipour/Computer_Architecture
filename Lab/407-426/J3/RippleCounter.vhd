----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:47:53 03/06/2019 
-- Design Name: 
-- Module Name:    RippleCounter - Behavioral 
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

entity RippleCounter is
    Port ( 
		clock : in  STD_LOGIC;
		reset1 : in  STD_LOGIC;
		q : inout  STD_LOGIC_vector ( 3 downto 0) );
end RippleCounter;

architecture Behavioral of RippleCounter is
	component TFF Port (
			reset : in  STD_LOGIC;
			t : in  STD_LOGIC;
         clock : in  STD_LOGIC;
         q : out  STD_LOGIC);
	end component;
	--signal s1,s2,s3:std_logic ;
	begin
	
		t1 : TFF port map(reset1, '1',clock, q(0));
		t2 : TFF port map(reset1, '1', not q(0), q(1));
		t3 : TFF port map(reset1, '1', not q(1), q(2));
		t4 : TFF port map(reset1, '1', not q(2), q(3));
		
end Behavioral;
