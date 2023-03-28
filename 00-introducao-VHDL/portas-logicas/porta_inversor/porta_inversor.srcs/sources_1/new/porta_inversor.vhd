----------------------------------------------------------------------------------
-- Company: UFC-Quixada
-- Engineer: Isaac Vinicius
-- 
-- Create Date: 03/27/2023 08:55:44 PM
-- Design Name: 
-- Module Name: porta_inversor - Behavioral
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


entity porta_inversor is
    Port ( A : in STD_LOGIC; -- entrada A
           S : out STD_LOGIC); -- saida S
end porta_inversor;

-- declaracao da arquitetura: contendo especificacoes das relacoes
-- entre as entradas e saidas de uma entidade
architecture Behavioral of porta_inversor is

begin -- descrevendo comportamento da entidade 
    S <= not A;

end Behavioral;
