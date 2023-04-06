----------------------------------------------------------------------------------
-- Company: UFC-Quixada
-- Engineer: Isaac Vinicius
-- 
-- Create Date: 04/06/2023 06:02:54 PM
-- Design Name: 
-- Module Name: tb_flip_flop_jk - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_flip_flop_jk is
--  Port ( );
end tb_flip_flop_jk;

architecture Behavioral of tb_flip_flop_jk is

component flip_flop_jk is
    Port ( J : in STD_LOGIC;    -- entrada
           K : in STD_LOGIC;    -- entrada
           CLK : in STD_LOGIC;  -- entrada
           reset: in STD_LOGIC;
           Q : inout STD_LOGIC);
end component;

-- Definindo sinais de entrada e saida
signal signal_J: std_logic := '0';
signal signal_K: std_logic := '0';
signal signal_CLK: std_logic;
signal signal_reset: std_logic := '0';
signal signal_Q: std_logic;

-- Definindo o periodo do clock
constant clk_period : time := 10 ns;

begin
    mapeamento: flip_flop_jk port map(
        J => signal_J,
        K => signal_K,
        clk => signal_CLK,
        reset => signal_reset,
        Q => signal_Q);
    
   
 --signal_CLK <= not signal_CLK after clk_period/2;
   clk_process :process
   begin
		signal_J <= '0';
		signal_K <= '0';
		signal_reset <= '1';
		signal_clk <= '0';	
		wait for clk_period/2;
		
		signal_reset <= '0';
		signal_clk <= '1';
		wait for clk_period/2; 
		
		signal_clk <= '0';
		signal_J <= '1';
		signal_K <= '1';
		wait for clk_period/2;
		
		signal_clk <= '1';
		wait for clk_period/2;
		
		signal_clk <= '0';
		signal_J <= '0';
		signal_K <= '1';
		wait for clk_period/2;
		
		signal_clk <= '1';
		wait for clk_period/2;
		
		signal_clk <= '0';
		signal_J <= '0';
		signal_K <= '0';
		wait for clk_period/2;
		
		signal_clk <= '1';
		wait for clk_period/2;
		
		signal_clk <= '0';
		signal_J <= '1';
		signal_K <= '0';
		wait for clk_period/2;
		
		signal_clk <= '1';
		wait for clk_period/2;
		
		signal_clk <= '0';
		signal_J <= '0';
		signal_K <= '1';
		wait for clk_period/2;
		
   end process;
 

 estimulo: process
   begin		
      -- resetando estado
      wait for 10 ns;	
      wait for clk_period*10;
      wait;
   end process;
  
end Behavioral;
