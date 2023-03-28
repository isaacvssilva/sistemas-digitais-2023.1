----------------------------------------------------------------------------------
-- Company: UFC-Quixada
-- Engineer: Isaac Vinicius
-- 
-- Create Date: 03/27/2023 06:29:30 PM
-- Design Name: 
-- Module Name: tb_porta_xor - Behavioral
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

entity tb_porta_xor is
--  Port ( );
end tb_porta_xor;

architecture Behavioral of tb_porta_xor is

component porta_xor is 
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           S : out STD_LOGIC);
end component;

-- definindo sinais de entrada
signal A, B: std_logic := '0';
signal S: std_logic;

begin
teste: porta_xor port map(
    A => A, B => B, S => S); -- mapeamento de pinos
estimulo: process

begin
    wait for 10 ns;
    A <= '0';   B <= '0';   wait for 10 ns;
    A <= '0';   B <= '1';   wait for 10 ns;
    A <= '1';   B <= '0';   wait for 10 ns;
    A <= '1';   B <= '1';   wait;
end process;
    
end Behavioral;
