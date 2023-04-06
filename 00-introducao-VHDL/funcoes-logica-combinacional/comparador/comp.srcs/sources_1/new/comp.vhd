----------------------------------------------------------------------------------
-- Company: UFC-Quixada
-- Engineer: Isaac Vinicius
-- 
-- Create Date: 04/06/2023 12:54:32 PM
-- Design Name: 
-- Module Name: comp - Behavioral
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

entity comp is
    Port ( A : in std_logic_vector (3 downto 0);
           B : in std_logic_vector (3 downto 0);
           S : out STD_LOGIC);
end comp;

architecture Behavioral of comp is

signal gate_1,gate_2, gate_3, gate_4: std_logic;
begin
-- A porta EX-OR e o inversor são substituídos pelo símbolo de uma EX-NOR.
gate_1 <= A(0) xnor B(0); 
gate_2 <= A(1) xnor B(1);
gate_3 <= A(2) xnor B(2); 
gate_4 <= A(3) xnor B(3);

-- A saída da porta AND indica igualdade (1) ou desigualdade (0) entre os dois números.
S <= gate_1 and gate_2 and gate_3 and gate_4;
end Behavioral;
