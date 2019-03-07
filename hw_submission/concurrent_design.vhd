library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity concurrent_design is
    Port ( A_1 : in STD_LOGIC;
           A_2 : in STD_LOGIC;
           B_1 : in STD_LOGIC;
           B_2 : in STD_LOGIC;
           D_1 : in STD_LOGIC;
           E_out : out STD_LOGIC);
end concurrent_design;

architecture Behavioral of concurrent_design is

signal A_out, B_out, C_out : std_logic; 

begin


A_out <= A_1 and A_2;
B_out <= B_1 or B_2;
C_out <= (not D_1) and B_2;
E_out <= A_out or B_out or C_out;

end Behavioral;