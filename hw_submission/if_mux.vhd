
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity if_mux is
    Port ( input : in STD_LOGIC_VECTOR (7 downto 0);
           SEL : in STD_LOGIC_VECTOR (2 downto 0);
           output : out STD_LOGIC);
end if_mux;

architecture Behavioral of if_mux is

begin

process (SEL,input)
begin

   if SEL = "000" then output<= input(0);
elsif SEL = "001" then output<= input(1); 
elsif SEL = "010" then output<= input(2); 
elsif SEL = "011" then output<= input(3);
elsif SEL = "100" then output<= input(4); 
elsif SEL = "101" then output<= input(5); 
elsif SEL = "110" then output<= input(6);
elsif SEL = "111" then output<= input(7);
else
output<='0';
end if;

end process;

end Behavioral;
