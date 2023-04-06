----------------------------------------------------------------------------------
-- Company: UFC-Quixada
-- Engineer: Isaac Vinicius
-- 
-- Create Date: 04/06/2023 04:40:03 PM
-- Design Name: 
-- Module Name: registrador - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity registrador is
    Port ( load : in STD_LOGIC;-- entrada load 
           D : in STD_LOGIC;   -- entrada de dados
           CLK : in STD_LOGIC;
           Q : out STD_LOGIC); -- saida de dados
end registrador;

architecture Behavioral of registrador is

begin
    clock:process(CLK)
    begin -- verificacao da borda -> sensivel a borda de subida do clock 
        if(rising_edge(CLK)) then
            if load = '1' then
                Q <= D; -- Dados de entrada vai para saida caso load esteja em nivel logico alto
            end if;
        end if;
     end process;


end Behavioral;
