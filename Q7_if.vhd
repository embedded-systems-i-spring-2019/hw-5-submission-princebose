library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity hw5 is
Port (Sel: in std_logic_vector(2 downto 0);
      Decout: out std_logic_vector(7 downto 0));
end hw5;

architecture Behavioral of hw5 is
begin

decoder:process
begin
    if Sel = "000" then
        Decout <= "00000001";
    elsif Sel = "001" then
        Decout <= "00000010";
    elsif Sel = "010" then
        Decout <= "00000100";
    elsif Sel = "011" then
        Decout <= "00001000";
    elsif Sel = "100" then
        Decout <= "00010000";
    elsif Sel = "101" then
        Decout <= "00100000";
    elsif Sel = "110" then
        Decout <= "01000000";
    elsif Sel = "111" then
        Decout <= "10000000";       
end if;       
end process;

end Behavioral;
