

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity case_ckt is
    Port ( A_1 : in STD_LOGIC;
           A_2 : in STD_LOGIC;
           B_1 : in STD_LOGIC;
           B_2 : in STD_LOGIC;
           D_1 : in STD_LOGIC;
           E_out : out STD_LOGIC);
end case_ckt;

architecture Behavioral of case_ckt is
signal A_out, b_out, C_out : std_logic;
signal ABC : std_logic_vector (2 downto 0);


begin

ABC <= A_out & B_out & C_out;

process (A_1, A_2, B_1, B_2, D_1)
begin

A_out <= A_1 and A_2;
B_out <= B_1 or B_2;
C_out <= (not D_1) and B_2;


case (ABC) is
when "000" => E_out <= '0';
when "001" => E_out <= '1'; 
when "010" => E_out <= '1'; 
when "011" => E_out <= '1'; 
when "100" => E_out <= '1'; 
when "101" => E_out <= '1'; 
when "110" => E_out <= '1'; 
when "111" => E_out <= '1'; 

end case;

end process;
end Behavioral;
