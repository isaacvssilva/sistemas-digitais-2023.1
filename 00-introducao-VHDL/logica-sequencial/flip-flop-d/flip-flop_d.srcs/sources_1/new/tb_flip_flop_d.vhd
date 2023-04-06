----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/06/2023 04:03:26 PM
-- Design Name: 
-- Module Name: tb_flip_flop_d - Behavioral
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

entity tb_flip_flop_d is
--  Port ( );
end tb_flip_flop_d;

architecture Behavioral of tb_flip_flop_d is

component flip_flop_d is 
    Port ( D : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : out STD_LOGIC);
end component;

--Definindo sinais de entrada e saida
signal signal_D: std_logic := '1';
signal signal_CLK: std_logic := '0';
signal signal_Q: std_logic;

begin

mapeamento: flip_flop_d port map(
                        D => signal_D, 
                        CLK => signal_CLK, 
                        Q => signal_Q);

estimulo: process
begin -- fazendo a variacao na entrada e no clock
    wait for 20 ns;
    signal_CLK <= not signal_CLK;
    
    wait for 10 ns;
    signal_D <= not signal_D;
    wait for 5 ns;
end process;
end Behavioral;
