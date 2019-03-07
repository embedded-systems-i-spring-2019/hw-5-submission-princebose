----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/07/2019 10:17:22 AM
-- Design Name: 
-- Module Name: hw5 - Behavioral
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

entity hw5 is
Port (A: in std_logic_vector(1 downto 0);
      B: in std_logic_vector(1 downto 0);
      D: in std_logic;
      E_out: out std_logic );
end hw5;

architecture Behavioral of hw5 is

signal Dnot : std_logic;
signal Aout : std_logic;
signal Bout : std_logic;
signal Cout : std_logic;
signal interim : std_logic_vector(1 downto 0);
signal interim1 : std_logic_vector(2 downto 0);

begin

Gate_A:process
begin
if A = "10"or A="01" or A="00" then
    Aout <= '0';
elsif A = "1" then 
    Aout <= '1';
end if;
end process;

Gate_B:process
begin
if A = "10"or A="01" or A="00" then
    Aout <= '0';
elsif A = "1" then 
    Aout <= '1';
end if;
end process;

GateD: process
begin
if D = '1' then
    Dnot <= '0';
else 
    Dnot <= '1';
end if;
end process;

interim <= B(1) & Dnot;
Gate_C:process
begin
if interim = "01" or interim = "10" or interim = "00" then
    Cout <= '0';
elsif interim = "11" then
    Cout <= '1';
end if;
end process;

interim1 <= Aout & Bout & Cout;
Gate_E:process
begin
if interim1 = "001" or interim1= "010" or interim1= "011" or interim1= "100" or interim1= "101" or interim1= "110" or interim1= "111" then
    E_out <= '1';
elsif interim1 = "000" then
    E_out <= '0';
end if;
end process;

end Behavioral;
