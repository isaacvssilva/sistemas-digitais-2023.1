----------------------------------------------------------------------------------
-- Company: UFC-Quixada
-- Engineer: Isaac Vinicus
-- 
-- Create Date: 04/06/2023 02:55:11 PM
-- Design Name: 
-- Module Name: tb_mux_4_1 - Behavioral
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

entity tb_mux_4_1 is
--  Port ( );
end tb_mux_4_1;

architecture Behavioral of tb_mux_4_1 is
component  mux_4_1 is
    Port ( D0 : in STD_LOGIC;
           D1 : in STD_LOGIC;
           D2 : in STD_LOGIC;
           D3 : in STD_LOGIC;
           sel_0 : in STD_LOGIC; -- chave de selecao
           sel_1 : in STD_LOGIC; -- chave de selecao
           saida : out STD_LOGIC);
end component;

-- definindo os sinais logicos de entrada e saida
signal sD0 : std_logic := '0';
signal sD1 : std_logic := '1';
signal sD2 : std_logic := '0';
signal sD3 : std_logic := '1';
signal s_controle : unsigned(1 downto 0) := "00";
signal s_saida : std_logic;

begin
 mapeamento: mux_4_1 port map(
                D0 => sD0,
                D1 => sD1,
                D2 => sD2,
                D3 => sD3,
                saida => s_saida,
                sel_0 => s_controle(0),
                sel_1 => s_controle(1));

estimulo: process
    begin
        wait for 10 ns;
        -- incrementando para passar em cada caso de selecao
        s_controle <= s_controle + 1;
    end process;
end Behavioral;
