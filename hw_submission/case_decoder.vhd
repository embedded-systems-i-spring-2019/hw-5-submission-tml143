

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity case_decoder is
    Port ( input : in STD_LOGIC_VECTOR (2 downto 0);
           output : out STD_LOGIC_VECTOR (7 downto 0));
end case_decoder;

architecture Behavioral of case_decoder is

begin
process(input)
begin
case (input) is
when "000" => output <= "11111110";
when "001" => output <= "11111101";
when "010" => output <= "11111011";
when "011" => output <= "11110111";
when "100" => output <= "11101111";
when "101" => output <= "11011111";
when "110" => output <= "10111111";
when "111" => output <= "01111111";
when others =>output<= "11111111";
end case;
end process;

end Behavioral;
