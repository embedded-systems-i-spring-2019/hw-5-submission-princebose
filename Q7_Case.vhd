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
case Sel is
    when "000" => Decout <= "00000001";
    when "001" => Decout <= "00000010";
    when "010" => Decout <= "00000100";
    when "011" => Decout <= "00001000";
    when "100" => Decout <= "00010000";
    when "101" => Decout <= "00100000";
    when "110" => Decout <= "01000000";
    when "111" => Decout <= "10000000";
end case;
end process;

end Behavioral;
