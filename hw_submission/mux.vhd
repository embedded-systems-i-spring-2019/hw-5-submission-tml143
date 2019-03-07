library IEEE;
use IEEE.std_logic_1164.all;




entity mux is
port ( 
input : in std_logic_vector (7 downto 0);
SEL : in std_logic_vector (2 downto 0);
output : out std_logic);
end mux;



architecture behavioral of mux is
begin

process (SEL,input)
begin

case (SEL) is
when "000" => output <= input(0);
when "001" => output <= input(1);
when "010" => output <= input(2);
when "011" => output <= input(3);
when "100" => output <= input(4);
when "101" => output <= input(5);
when "110" => output <= input(6);
when "111" => output <= input(7);
when others => output <= '0';
end case;
end process;
end behavioral;