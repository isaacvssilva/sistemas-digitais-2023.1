----------------------------------------------------------------------------------
-- Company: UFC-Quixada
-- Engineer: Isaac Vinicius
-- 
-- Create Date: 03/28/2023 08:08:48 AM
-- Design Name: 
-- Module Name: tb_full_adder - Behavioral
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

entity tb_full_adder is
--  Port ( );
end tb_full_adder;

architecture Behavioral of tb_full_adder is

component full_adder is
    Port ( A : in STD_LOGIC; -- entrada A
           B : in STD_LOGIC; -- entrada B
           Cin : in STD_LOGIC; -- entrada Carry
           Carry : out STD_LOGIC; -- saida Carry
           Sum : out STD_LOGIC); -- saida Soma
end component;

-- Definindo sinais de entrada e saida
signal iA, iB, iCin: std_logic := '0';
signal oCarry, oSum: std_logic;

begin
    teste: full_adder port map(-- mapeamento de pinos
                                A => iA, 
                                B => iB, 
                                Cin => iCin,
                                Carry => oCarry,
                                Sum => oSum);
    estimulo: process
        begin
            iA <= '0';   iB <= '0';  iCin <= '0';   wait for 10 ns;
            iA <= '0';   iB <= '0';  iCin <= '1';   wait for 10 ns;
            iA <= '0';   iB <= '1';  iCin <= '0';   wait for 10 ns;
            iA <= '0';   iB <= '1';  iCin <= '1';   wait for 10 ns;
            iA <= '1';   iB <= '0';  iCin <= '0';   wait for 10 ns;
            iA <= '1';   iB <= '0';  iCin <= '1';   wait for 10 ns;
            iA <= '1';   iB <= '1';  iCin <= '0';   wait for 10 ns;
            iA <= '1';   iB <= '1';  iCin <= '1';   wait for 10 ns;
            
        end process;

end Behavioral;
