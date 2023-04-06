----------------------------------------------------------------------------------
-- Company: UFC-Quixada
-- Engineer: Isaac Vinicius
-- 
-- Create Date: 04/06/2023 03:51:47 PM
-- Design Name: 
-- Module Name: flip_flop_d - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;


--O flip-flop D é usado quando um único bit de dado (1 ou 0) é para ser armazenado. A adição de
--um inversor num flip-flop S-R cria um flip-flop D básico

--Entrada D, além do clock.
--Caso exista um nível ALTO na entrada D quando um pulso de clock é aplicado, o flip-flop será
--setado sendo o nível ALTO na entrada D é armazenado pelo flip-flop na borda positiva do pulso de clock. 
--Caso exista um nível BAIXO na entrada D quando o pulso de clock é aplicado, o
--flip-flop será resetado sendo o nível BAIXO na entrada D armazenado pelo flip-flop na borda
--de subida do pulso de clock.

entity flip_flop_d is
    Port ( D : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : out STD_LOGIC);
end flip_flop_d;

architecture Behavioral of flip_flop_d is

begin

clock: process(CLK)
    begin
    -- verificacao da borda -> FFD sensivel a borda de subida do clock 
        if(rising_edge(CLK))then 
            Q <= D;
        end if;
    end process;

end Behavioral;
