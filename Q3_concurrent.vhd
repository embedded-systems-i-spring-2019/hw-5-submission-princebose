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
Aout <= A(0) and A(1);
Bout <= B(0) or B(1);
Dnot <= not D;
Cout <= B(1) and Dnot;
E_out <= Aout or Bout or Cout;
end Behavioral;
