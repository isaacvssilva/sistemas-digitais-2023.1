----------------------------------------------------------------------------------
-- Company: UFC-Quixada
-- Author: Isaac Vinicius 
-- 
-- Create Date: 03/27/2023 09:49:34 AM
-- Design Name: 
-- Module Name: tb_porta_and_clk - Behavioral
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

entity tb_porta_and_clk is
--  Port ( );
end tb_porta_and_clk;

architecture Behavioral of tb_porta_and_clk is

component porta_and_clk is 
    Port ( 
           clk: in STD_LOGIC;
           A : in STD_LOGIC;
           B : in STD_LOGIC;
           S : out STD_LOGIC);
end component;

-- definindo sinais de entrada
signal A0, B0, S0: STD_LOGIC := '0';
signal clk: STD_LOGIC;
constant clock_period: time := 100 ns;

begin
    -- alternando nivel logico a cada meio periodo
    config_clk: process
    begin
        clk <= '1';
        wait for clock_period/2;
        clk <= '0';
        wait for clock_period/2;
    end process;

    teste: porta_and_clk 
           -- mapeamento de pinos
           port map(
            clk => clk, 
            A => A0, 
            B => B0, 
            S => S0);
    
    estimulo: process
    begin
        A0 <= '0';	B0 <= '0';   wait for 100 ns;
        A0 <= '0';	B0 <= '1';   wait for 100 ns;
        A0 <= '1';	B0 <= '0';   wait for 100 ns;
        A0 <= '1';	B0 <= '1';   wait for 100 ns;
        wait;
    end process;
 
end Behavioral;
