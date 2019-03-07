----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/07/2019 03:55:35 PM
-- Design Name: 
-- Module Name: if_ckt - Behavioral
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



entity if_ckt is
    Port ( A_1 : in STD_LOGIC;
           A_2 : in STD_LOGIC;
           B_1 : in STD_LOGIC;
           B_2 : in STD_LOGIC;
           D_1 : in STD_LOGIC;
           E_out : out STD_LOGIC);
end if_ckt;

architecture Behavioral of if_ckt is

begin
process (A_1, A_2, B_1, B_2, D_1)
begin
if( (A_1 and A_2) ='1' or (B_1 or B_2)='1' or ((not D_1) and B_2)='1' )then
E_out <='1';
else
E_out <='0';
end if;
end process;
end Behavioral;
