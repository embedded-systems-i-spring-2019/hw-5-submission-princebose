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
with A select
    Aout <= '1' when "11",
            '0' when "10"|"01"|"00",
            '0' when others;
with B select
    Bout <= '1' when "11"|"10"|"01",
            '0' when "00",
            '0' when others;
with D select
    Dnot <= '1' when '0',
            '0' when '1',
            '0' when others;

interim <= B(1) & Dnot;
with interim select
    Cout <= '1' when "11",
            '0' when "01"|"10"|"00",
            '0' when others; 

interim1 <= Aout & Bout & Cout;
with interim1 select
    E_out <= '1' when "001"|"010"|"011"|"100"|"101"|"110"|"111",
             '0' when "000",
             '0' when others;

end Behavioral;
