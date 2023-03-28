----------------------------------------------------------------------------------
-- Company: UFC-Quixada
-- Engineer: Isaac Vinicius
-- 
-- Create Date: 03/28/2023 07:33:08 AM
-- Design Name: 
-- Module Name: full_adder - Behavioral
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

-- O somador-completo aceita dois bits de entrada e um carry de entrada,
-- e gera uma saída de soma e um carry de saída.
entity full_adder is
    Port ( A : in STD_LOGIC; -- entrada A
           B : in STD_LOGIC; -- entrada B
           Cin : in STD_LOGIC; -- entrada Carry
           Carry : out STD_LOGIC; -- saida Carry
           Sum : out STD_LOGIC); -- saida Soma
end full_adder;

architecture Behavioral of full_adder is

begin
    -- Para o carry de entrada (Cin) ser somado aos bits de entrada, 
    -- deve-se fazer uma EX-OR com A ⊕ B, resultando 
    -- na equação para a saída da soma do somador-completo
    Sum <= A xor B xor Cin; 
    -- O carry de saída do somador-completo é portanto produzido pela operação AND de A com B
    -- e pela operação AND de com Cin. 
    Carry <= (A and B) or (A and Cin) or (B and Cin);

end Behavioral;
