----------------------------------------------------------------------------------
-- Company: UFC-Quixada
-- Author: Isaac Vinicius 
-- 
-- Create Date: 03/26/2023 03:51:58 PM
-- Design Name: 
-- Module Name: porta_or - Behavioral
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
entity porta_or is
    Port ( A : in STD_LOGIC; -- entrada A
           B : in STD_LOGIC; -- entrada B
           S : out STD_LOGIC); -- saida S
end porta_or;

-- declaracao da arquitetura: contendo especificacoes das relacoes
-- entre as entradas e saidas de uma entidade
architecture Behavioral of porta_or is

-- descrevendo comportamento da entidade 
begin
    -- atribuindo a 'S' a adicao logica dos sinais 'A' e 'B'
    S <= A or B;

end Behavioral;