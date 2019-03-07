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

begin

Dnot <= not(D);

GateA:process(A)
begin 

if A(0) = '1' and A(1) = '1' then
    Aout <= '1';
else
    Aout <= '0';
end if;

end process;

GateB:process(B)
begin 

if B(0) = '0' and B(1) = '0' then
    Bout <= '0';
else
    Bout <= '1';
end if;

end process;

GateC:process(D)
begin 

if B(1) = '1' and D = '0' then
    Cout <= '1';
else
    Cout <= '0';
end if; 

end process;

GateE:process(Aout,Bout,Cout)
begin

if Aout ='0' and Bout = '0' and Cout = '0' then
    E_out <= '0';
else
    E_out <= '1';
end if;

end process;

end Behavioral;
