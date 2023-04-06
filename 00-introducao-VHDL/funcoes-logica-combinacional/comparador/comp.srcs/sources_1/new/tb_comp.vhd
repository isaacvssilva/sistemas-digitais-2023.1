----------------------------------------------------------------------------------
-- Company: UFC-Quixada
-- Engineer: Isaac Vinicius
-- 
-- Create Date: 04/06/2023 12:56:34 PM
-- Design Name: 
-- Module Name: tb_comp - Behavioral
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

entity tb_comp is
--  Port ( );
end tb_comp;

architecture Behavioral of tb_comp is
component comp is
    Port ( A : in std_logic_vector (3 downto 0);
           B : in std_logic_vector (3 downto 0);
           S : out STD_LOGIC);
end component;

-- definindo sinais de entrada
signal sig_A : std_logic_vector(3 downto 0) := (others => '0');
signal sig_B : std_logic_vector(3 downto 0) := (others => '0');
signal sig_S : std_logic;

begin
    teste: comp port map(A => sig_A, B => sig_B, S => sig_S);
    
    estimulo: process -- 4 bits
    begin
--       for i in 3 to 0 loop
--           if (A > B) then
--            S <= '0';
--           elsif (B > A) then
--            S <= '0';
--           else
--            S <= '1';
--           end if;
            
--             wait for 10 ns;
--        end loop;
        sig_A <= X"2";
        sig_B <= X"2";
        wait for 5 ns;
        sig_A <= X"5";
        sig_B <= X"7";
        wait;
        
        
    end process;


-- estimulo: process
--      begin
--           if (A > B) then
--            S <= '0';
--           elsif (B > A) then
--            S <= '0';
--           else
--            S <= '1';
--           end if;
--      end process;
    
--    estimulo: process -- 2 bits
--        begin
--            A(0) <= '0';   B(0) <= '0'; wait for 10 ns;
--            A(0) <= '0';   B(0) <= '1'; wait for 10 ns;
--            A(0) <= '1';   B(0) <= '0'; wait for 10 ns;
--            A(0) <= '1';   B(0) <= '1'; wait for 10 ns;
            
--            A(1) <= '0';   B(1) <= '0'; wait for 10 ns;
--            A(1) <= '0';   B(1) <= '1'; wait for 10 ns;
--            A(1) <= '1';   B(1) <= '0'; wait for 10 ns;
--            A(1) <= '1';   B(1) <= '1'; wait for 10 ns;
--            end process;
                
end Behavioral;
