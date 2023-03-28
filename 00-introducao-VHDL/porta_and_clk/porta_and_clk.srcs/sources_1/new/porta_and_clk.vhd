----------------------------------------------------------------------------------
-- Company: UFC-Quixada
-- Author: Isaac Vinicius 
-- 
-- Create Date: 03/27/2023 09:44:24 AM
-- Design Name: 
-- Module Name: porta_and_clk - Behavioral
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
entity porta_and_clk is
    Port ( 
           clk: in STD_LOGIC; -- entrada Clock
           A : in STD_LOGIC; -- entrada A
           B : in STD_LOGIC; -- entrada B
           S : out STD_LOGIC); -- saida S
end porta_and_clk;

-- declaracao da arquitetura: contendo especificacoes das relacoes
-- entre as entradas e saidas de uma entidade
architecture Behavioral of porta_and_clk is

begin
    process(clk) -- descrevendo comportamento da entidade 
    begin
        if(rising_edge(clk)) then -- operacao em subida de borda
            S <= A and B;
        end if;
    end process;

end Behavioral;