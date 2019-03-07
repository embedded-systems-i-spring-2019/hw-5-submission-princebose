library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity hw5 is
Port (Muxin: in std_logic_vector(7 downto 0);
      Sel: in std_logic_vector(2 downto 0);
      Muxout: out std_logic);
end hw5;

architecture Behavioral of hw5 is
begin

multiplexer:process
begin
    if Sel = "000" then
        Muxout <= Muxin(0);
    elsif Sel = "001" then
        Muxout <= Muxin(1);
    elsif Sel = "010" then
        Muxout <= Muxin(2);
    elsif Sel = "011" then
        Muxout <= Muxin(3);
    elsif Sel = "100" then
        Muxout <= Muxin(4);
    elsif Sel = "101" then
        Muxout <= Muxin(5);
    elsif Sel = "110" then
        Muxout <= Muxin(6);
    elsif Sel = "111" then
        Muxout <= Muxin(7);       
end if;       
end process;

end Behavioral;
