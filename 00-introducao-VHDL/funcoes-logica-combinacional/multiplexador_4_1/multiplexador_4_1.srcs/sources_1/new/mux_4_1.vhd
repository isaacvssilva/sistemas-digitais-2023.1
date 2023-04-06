----------------------------------------------------------------------------------
-- Company: UFC-Quixada
-- Engineer: Isaac Vinicius
-- 
-- Create Date: 04/06/2023 07:52:39 AM
-- Design Name: 
-- Module Name: mux_4_1 - Behavioral
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
use IEEE.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

--um código de 2 bits nas entradas de seleção de dados (S) permitem que o dado
--na entrada selecionada passe para a saída de dados. Se um binário 0 (S1 = 0 e S0 = 0) for aplicado nas
--linhas de seleção de dados, o dado na entrada D0 aparece na linha de saída de dados. Se um binário
--1 (S1 = 0 e S0 = 1) for aplicado nas linhas de seleção de dados, o dado na entrada D1 aparece na linha
--de saída de dados. Se um binário 2 (S1 = 1 e S0 = 0) for aplicado, o dado na entrada D2 aparece na li-
--nha de saída de dados. Se um binário 3 (S1 = 1 e S0 = 1) for aplicado, o dado na entrada D3 é comu-
--tado para a linha de saída de dados.
entity mux_4_1 is
    Port ( D0 : in STD_LOGIC;
           D1 : in STD_LOGIC;
           D2 : in STD_LOGIC;
           D3 : in STD_LOGIC;
           sel_0 : in STD_LOGIC; -- chave de selecao
           sel_1 : in STD_LOGIC; -- chave de selecao
           saida : out STD_LOGIC);
end mux_4_1;

architecture Behavioral of mux_4_1 is

-- variavel que ira guardar a chave de selecao
signal controle: unsigned(1 downto 0);

begin
    controle <= sel_0 & sel_1; -- recebendo as chaves de selecao
    
    with controle select
       saida <= D0 when "00", 
                D1 when "01", 
                D2 when "10", 
                D3 when others;
end Behavioral;
