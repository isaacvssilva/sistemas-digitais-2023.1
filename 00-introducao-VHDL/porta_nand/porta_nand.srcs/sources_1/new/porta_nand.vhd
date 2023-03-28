----------------------------------------------------------------------------------
-- Company: UFC-Quixada
-- Engineer: Isaac Vinicius
-- 
-- Create Date: 03/27/2023 07:02:28 PM
-- Design Name: 
-- Module Name: porta_nand - Behavioral
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
entity porta_nand is
    Port ( A : in STD_LOGIC; -- entrada A
           B : in STD_LOGIC; -- entrada B
           S : out STD_LOGIC); -- saida S
end porta_nand;

-- declaracao da arquitetura: contendo especificacoes das relacoes
-- entre as entradas e saidas de uma entidade
architecture Behavioral of porta_nand is

begin -- descrevendo comportamento da entidade 
    S <= A nand B;

end Behavioral;
