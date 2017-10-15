----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:31:09 10/15/2017 
-- Design Name: 
-- Module Name:    reg_execute - Behavioral 
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

entity reg_execute is
    Port ( clk : in  STD_LOGIC;
			  RegWriteE : in  STD_LOGIC;
           RegWriteM : out  STD_LOGIC;
           MemtoRegE : in  STD_LOGIC;
           MemtoRegM : out  STD_LOGIC;
           MemWriteE : in  STD_LOGIC;
           MemWriteM : out  STD_LOGIC;
           BranchE : in  STD_LOGIC;
           BranchM : out  STD_LOGIC;
           ZeroE : inout  STD_LOGIC;
           ZeroM : out  STD_LOGIC;
           AluOutE : in  STD_LOGIC_VECTOR (31 downto 0);
           AluOutM : out  STD_LOGIC_VECTOR (31 downto 0);
           WriteDataE : in  STD_LOGIC_VECTOR (31 downto 0);
           WriteDataM : out  STD_LOGIC_VECTOR (31 downto 0);
           WriteRegE : in  STD_LOGIC_VECTOR (4 downto 0);
           WriteRegM : in  STD_LOGIC_VECTOR (4 downto 0);
           PCBranchE : in  STD_LOGIC_VECTOR (31 downto 0);
           PCBranchM : out  STD_LOGIC_VECTOR (31 downto 0));
end reg_execute;

architecture Behavioral of reg_execute is
begin
	process(clk)
	begin
		if(clk='1') then
			RegWriteM <= RegWriteE;
			MemtoRegM <= MemtoRegE;
			MemWriteM <= MemWriteE;
			BranchM <= BranchE;
			ZeroM <= ZeroE;
			AluOutM <= AluOutE;
			WriteDataM <= WriteDataE;
			WriteRegM <= WriteRegE;
			PCBranchM <= PCBranchE;
		end if;
	end process;
end Behavioral;
