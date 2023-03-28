----------------------------------------------------------------------------------
-- Company: UFC-Quixada
-- Engineer: Isaac Vinicius
-- 
-- Create Date: 03/27/2023 09:09:19 PM
-- Design Name: 
-- Module Name: tb_porta_inversor - Behavioral
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


entity tb_porta_inversor is
--  Port ( );
end tb_porta_inversor;

architecture Behavioral of tb_porta_inversor is

component porta_inversor is 
    Port ( A : in STD_LOGIC;
            S : out STD_LOGIC);
end component;
-- definindo sinais
signal A, S: std_logic;

begin
    teste: porta_inversor port map (A, S); -- mapeamento de pinos
    estimulo: process
        begin
           wait for 10 ns;
           A <= '0'; 
           wait for 10 ns;  
           A <= '1';
           wait for 10 ns;
       end process;  

end Behavioral;
