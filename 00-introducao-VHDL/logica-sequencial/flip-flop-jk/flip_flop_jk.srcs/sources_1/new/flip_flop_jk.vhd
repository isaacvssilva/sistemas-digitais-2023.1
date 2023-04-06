----------------------------------------------------------------------------------
-- Company: UFC-Quixada
-- Engineer: Isaac Vinicius
-- 
-- Create Date: 04/06/2023 05:39:08 PM
-- Design Name: 
-- Module Name: flip_flop_jk - Behavioral
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

entity flip_flop_jk is
    Port ( J : in STD_LOGIC;    -- entrada
           K : in STD_LOGIC;    -- entrada
           CLK : in STD_LOGIC;  -- entrada
           reset: in STD_LOGIC;
           Q : inout STD_LOGIC);
end flip_flop_jk;

architecture Behavioral of flip_flop_jk is

begin
clock: process(reset, CLK)
    begin
        if reset = '1' then 
			Q <= '0';
    -- verificacao da borda -> sensivel a borda de subida do clock 
        elsif(rising_edge(CLK))then 
            if (J='0' and K='0') then
				Q <= Q;
			elsif (J='0' and K='1') then
				Q <= '0';
			elsif (J='1' and K='0') then
				Q <= '1';
			elsif (J='1' and K='1') then
				Q <= not (Q); -- saida (Q') barrado
			end if;    
        end if;
end process;
end Behavioral;
