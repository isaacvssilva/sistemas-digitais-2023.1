----------------------------------------------------------------------------------
-- Company: UFC-Quixada
-- Engineer: Isaac Vinicius
-- 
-- Create Date: 03/27/2023 08:38:42 PM
-- Design Name: 
-- Module Name: porta_nor - Behavioral
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

-- declaracao da entidade: definindo entradas e saidas
entity porta_nor is
    Port ( A : in STD_LOGIC; -- entrada A
           B : in STD_LOGIC; -- entrada B
           S : out STD_LOGIC); -- saida S
end porta_nor;

-- declaracao da arquitetura: contendo especificacoes das relacoes
-- entre as entradas e saidas de uma entidade
architecture Behavioral of porta_nor is

begin -- descrevendo comportamento da entidade 
    S <= A nor B;

end Behavioral;
