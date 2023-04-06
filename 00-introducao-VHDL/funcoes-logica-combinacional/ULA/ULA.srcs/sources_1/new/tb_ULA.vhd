----------------------------------------------------------------------------------
-- Company: UFC-Quixada
-- Engineer: Isaac Vinicius
-- 
-- Create Date: 04/06/2023 09:37:21 AM
-- Design Name: 
-- Module Name: tb_ULA - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_ULA is
--  Port ( );
end tb_ULA;

architecture Behavioral of tb_ULA is
constant N: integer := 16;
signal tb_A :   std_logic_vector(N-1 downto 0);
signal tb_B :   std_logic_vector(15 downto 0);
signal tb_Q :   std_logic_vector(15 downto 0);
signal tb_op :  std_logic_vector(3 downto 0) := (others => '0');

begin
--Device under test
DUT: entity work.ULA
    --1° N é da entidade e o 2° é do proprio arquivo
    Generic map (N => N) 
    Port map (  A   => tb_A,
                B   => tb_B,
                Q   => tb_Q,
                op  => tb_op
                );

stimulus_ula:
    process 
        begin
            tb_A    <= X"0005";
            tb_B    <= X"0002";
            
            for i in 4 to 10 loop
                tb_op <= conv_std_logic_vector(i, 4);
                wait for 20ns;
                
            end loop;
            tb_op   <= (others => '0');
            tb_A    <= (others => '0');
            tb_B    <= (others => '0');
            wait;
                
        end process;

end Behavioral;
