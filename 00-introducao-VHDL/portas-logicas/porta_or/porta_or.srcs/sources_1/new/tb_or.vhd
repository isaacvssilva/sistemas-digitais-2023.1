----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/26/2023 05:44:35 PM
-- Design Name: 
-- Module Name: tb_or - Behavioral
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

entity tb_or is
--  Port ( );
end tb_or;

architecture Behavioral of tb_or is

    component porta_or is
        Port ( A : in STD_LOGIC; -- entrada A
               B : in STD_LOGIC; -- entrada B
               S : out STD_LOGIC); -- saida S
    end component;

    signal A, B: std_logic;
    signal S: std_logic;

begin

    teste: porta_or port map(A, B, S);

estimulo: process

begin
    wait for 10 ns;
    
    A <= '0';
    B <= '0';
    wait for 10 ns;
    
    A <= '0';
    B <= '1';
    wait for 10 ns;
    
    A <= '1';
    B <= '0';
    wait for 10 ns;
    
    A <= '1';
    B <= '1';
    wait;
end process;
    

end Behavioral;