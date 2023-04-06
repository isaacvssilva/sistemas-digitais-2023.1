----------------------------------------------------------------------------------
-- Company: UFC-Quixada
-- Engineer: Isaac Vinicius
-- 
-- Create Date: 04/06/2023 03:34:40 PM
-- Design Name: 
-- Module Name: tb_driver - Behavioral
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

entity tb_driver is
--  Port ( );
end tb_driver;

architecture Behavioral of tb_driver is
component driver is
    Port ( A : in STD_LOGIC;
           S : out STD_LOGIC);
end component;
signal input, output: std_logic;
begin
teste: driver port map(A => input, S => output);
estimulo: process
begin
    wait for 5 ns;
    input <= '0';
    wait for 5 ns;
    input <= '1'; 
end process;
end Behavioral;
