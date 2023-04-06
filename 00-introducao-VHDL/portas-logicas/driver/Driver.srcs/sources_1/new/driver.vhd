----------------------------------------------------------------------------------
-- Company: UFC-Quixada
-- Engineer: Isaac Vinicius
-- 
-- Create Date: 04/06/2023 03:32:19 PM
-- Design Name: 
-- Module Name: driver - Behavioral
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

entity driver is
    Port ( A : in STD_LOGIC;
           S : out STD_LOGIC);
end driver;

architecture Behavioral of driver is

begin

S <= A;
end Behavioral;
