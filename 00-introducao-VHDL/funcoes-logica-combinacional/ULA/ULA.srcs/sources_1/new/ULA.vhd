----------------------------------------------------------------------------------
-- Company: UFC-Quixada
-- Engineer: Isaac Vinicius
-- 
-- Create Date: 04/06/2023 08:16:26 AM
-- Design Name: 
-- Module Name: ULA - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ULA is
 Generic (N: integer:=16);
    Port ( A:   in  STD_LOGIC_VECTOR     (N-1 downto 0);
           B:   in  STD_LOGIC_VECTOR     (N-1 downto 0);
           Q:   out STD_LOGIC_VECTOR     (N-1 downto 0);
           op:  in  STD_LOGIC_VECTOR     (3 downto 0));
end ULA;

architecture Behavioral of ULA is

signal result:  std_logic_vector(N-1 downto 0)  := (others => '0');
signal s_add:   std_logic_vector(N-1 downto 0)  := (others => '0');
signal s_sub:   std_logic_vector(N-1 downto 0)  := (others => '0');
signal s_mul:   std_logic_vector(2*N-1 downto 0):= (others => '0');
signal s_and:   std_logic_vector(N-1 downto 0)  := (others => '0');
signal s_or:    std_logic_vector(N-1 downto 0)  := (others => '0');
signal s_xor:   std_logic_vector(N-1 downto 0)  := (others => '0');
signal s_not:   std_logic_vector(N-1 downto 0)  := (others => '0');

begin

with op select 
result <=   s_add   when "0100",
            s_sub   when "0101",
            s_mul(N-1 downto 0) when "0110",
            s_and   when "0111",
            s_or    when "1000",
            s_not   when "1001",
            s_xor   when "1010",
            result  when others;

s_add   <= A + B;
s_sub   <= A - B;
s_mul   <= A * B;
s_and   <= A and B;
s_or    <= A or B;
s_xor   <= A xor B;
s_not   <= not A;

Q <= result;

end Behavioral;
