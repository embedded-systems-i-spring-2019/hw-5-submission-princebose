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
    case(Sel) is
        when "000" => Muxout <= Muxin(0);
        when "001" => Muxout <= Muxin(1);
        when "010" => Muxout <= Muxin(2);
        when "011" => Muxout <= Muxin(3);
        when "100" => Muxout <= Muxin(4);
        when "101" => Muxout <= Muxin(5);
        when "110" => Muxout <= Muxin(6);
        when "111" => Muxout <= Muxin(7);
    end case;                
end process;

end Behavioral;
