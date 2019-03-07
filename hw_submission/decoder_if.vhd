

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity decoder_if is
    Port ( input : in STD_LOGIC_VECTOR (3 downto 0);
           output : out STD_LOGIC_VECTOR (7 downto 0));
end decoder_if;

architecture Behavioral of decoder_if is

begin

process(input)
begin
   if input = "000" then output <="11111110";
elsif input ="001" then output <= "11111101";
elsif input ="010" then output <= "11111011";
elsif input ="011" then output <= "11110111";
elsif input ="100" then output <= "11101111";
elsif input ="101" then output <= "11011111";
elsif input ="110" then output <= "10111111";
elsif input ="111" then output <= "01111111";
else output <="11111111";
end if;

end process;


end Behavioral;
