--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:46:06 07/09/2011
-- Design Name:   
-- Module Name:   C:/xesscorp/PRODUCTS/TUTORIALS/FpgasNowWhat/Chapters/12MHz/FPGA/fast_blinker/fast_blinkerTestBench.vhd
-- Project Name:  fast_blinker
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fast_blinker
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
 
ENTITY fast_blinkerTestBench IS
END fast_blinkerTestBench;
 
ARCHITECTURE behavior OF fast_blinkerTestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fast_blinker
    PORT(
         clk_i : IN  std_logic;
         blinker_o : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk_i : std_logic := '0';

 	--Outputs
   signal blinker_o : std_logic;

   -- Clock period definitions
   constant clk_i_period : time := 83.3 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fast_blinker PORT MAP (
          clk_i => clk_i,
          blinker_o => blinker_o
        );

   -- Clock process definitions
   clk_i_process :process
   begin
		clk_i <= '0';
		wait for clk_i_period/2;
		clk_i <= '1';
		wait for clk_i_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_i_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
