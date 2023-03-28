----------------------------------------------------------------------------------
-- Company: UFC-Quixada
-- Engineer: Isaac Vinicius
-- 
-- Create Date: 03/28/2023 06:18:21 AM
-- Design Name: 
-- Module Name: half_adder - Behavioral
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

-- O meio-somador aceita dois dígitos binários em suas entradas e produz dois dígitos
-- binários em suas saídas, um bit de soma e um bit de carry.
entity half_adder is
    Port ( A : in STD_LOGIC; -- entrada A
           B : in STD_LOGIC; -- entrada B
           carry : out STD_LOGIC; -- saida Carry
           Sum : out STD_LOGIC); -- -- saida Soma
end half_adder;

architecture Behavioral of half_adder is

begin
    Sum <= A xor B; -- a saída soma (∑) é 1 apenas se as variáveis de entrada, A e B, não forem iguais.
    Carry <= A and B; -- carry de saída (Cout) é 1 apenas quando A e B são 1s


end Behavioral;
