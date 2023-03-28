----------------------------------------------------------------------------------
-- Company: UFC-Quixada
-- Engineer: Isaac Vinicius
-- 
-- Create Date: 03/27/2023 06:44:04 PM
-- Design Name: 
-- Module Name: tb_porta_xnor - Behavioral
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

entity tb_porta_xnor is
--  Port ( );
end tb_porta_xnor;

architecture Behavioral of tb_porta_xnor is
component porta_xnor is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           S : out STD_LOGIC);
end component;

-- Definindo sinais de entradas
signal A, B: std_logic := '0';
signal S: std_logic;

begin
teste: porta_xnor port map(
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
