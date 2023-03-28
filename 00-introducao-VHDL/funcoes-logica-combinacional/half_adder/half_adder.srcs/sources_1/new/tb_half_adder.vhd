----------------------------------------------------------------------------------
-- Company: UFC-Quixada
-- Engineer: Isaac Vinicius
-- 
-- Create Date: 03/28/2023 07:03:25 AM
-- Design Name: 
-- Module Name: tb_half_adder - Behavioral
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


entity tb_half_adder is
--  Port ( );
end tb_half_adder;

architecture Behavioral of tb_half_adder is

component half_adder is
    Port ( A : in STD_LOGIC; -- entrada A
           B : in STD_LOGIC; -- entrada B
           carry : out STD_LOGIC; -- saida Carry
           Sum : out STD_LOGIC); -- -- saida Soma
end component;

-- Definindo sinais de entrada
signal iA, iB: std_logic := '0';

-- Definindo sinais de saida
signal oCarry, oSum: std_logic;

begin
    teste: half_adder port map ( -- mapeamento de pinos
                                A => iA, 
                                B => iB, 
                                Carry => oCarry,
                                Sum => oSum); 

     estimulo: process
        begin
            iA <= '0';   iB <= '0';   wait for 10 ns;
            iA <= '0';   iB <= '1';   wait for 10 ns;
            iA <= '1';   iB <= '0';   wait for 10 ns;
            iA <= '1';   iB <= '1';   wait;
        end process;

end Behavioral;