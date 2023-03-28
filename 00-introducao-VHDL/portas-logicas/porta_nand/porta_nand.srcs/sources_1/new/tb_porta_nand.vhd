----------------------------------------------------------------------------------
-- Company: UFC-Quixada
-- Engineer: Isaac Vinicius
-- 
-- Create Date: 03/27/2023 08:26:13 PM
-- Design Name: 
-- Module Name: tb_porta_nand - Behavioral
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

entity tb_porta_nand is
--  Port ( );
end tb_porta_nand;

architecture Behavioral of tb_porta_nand is

component porta_nand is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           S : out STD_LOGIC);
end component;

-- Definindo sinais de entradas
signal A, B: std_logic := '0';
signal S: std_logic;

begin
    teste: porta_nand port map(A, B, S); -- mapeamento de pinos

estimulo: process
begin
    A <= '0';   B <= '0';   wait for 10 ns;
    A <= '0';   B <= '1';   wait for 10 ns;
    A <= '1';   B <= '0';   wait for 10 ns;
    A <= '1';   B <= '1';   wait;
end process;

end Behavioral;
