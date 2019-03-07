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
interim1 <= Aout & Bout & Cout;
interim <= B(1) & D;
Dnot <= not(D);

GateA:process(A)
begin 

--if A(0) = '1' and A(1) = '1' then
--    Aout <= '1';
--else
--    Aout <= '0';
--end if;
case(A) is
    when "11" => Aout <= '1';
   when others => Aout <= '0';
end case;

end process;

GateB:process(B)
begin 

--if B(0) = '0' and B(1) = '0' then
--    Bout <= '0';
--else
--    Bout <= '1';
--end if;
case(B) is
    when "00" => Bout <= '0';
    when others => Aout <= '1';
end case;

end process;

GateC:process(B(1),D)

begin 
--if B(1) = '1' and D = '0' then
--    Cout <= '1';
--else
--    Cout <= '0';
--end if;
case(interim) is
    when "10" => Cout <= '1';
    when others => Cout <= '0';
end case; 

end process;

GateE:process(Aout,Bout,Cout)
begin

--if Aout ='0' and Bout = '0' and Cout = '0' then
--    E_out <= '0';
--else
--    E_out <= '1';
--end if;
case(interim1) is
    when "000" => E_out <= '0';
    when others => E_out <= '1';
end case;

end process;

end Behavioral;
