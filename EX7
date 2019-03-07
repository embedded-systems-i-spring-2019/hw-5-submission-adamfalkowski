library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity crk7 is
  Port (
        signal D0 = in std_logic_vector(2 downto 0);
        signal D1 = out std_logic_vector(7 donwto 0)
        
        );
end crk7;

---------------------------------------------------------
--using if statements
architecture crk7_arc_if of crk7 is
begin
process(D0)
begin

        if D0 = "000" then
              D1 <= "11111110"; --beacuse active low
        elsif D0 = "001" then
            D1 <= "11111101";
        elsif D0 = "010" then
            D1 <= "11111011";
        elsif D0 = "011" then
            D1 <= "11110111";
        elsif D0 = "100" then
            D1<= "11101111";
        elsif D0 = "101" then
            D1 <= "11011111";
        elsif D0 = "110" then
            D1 <= "10111111";
        elsif D0 = "111" then
            D1 <= "01111111";
        else 
            D1 <= "11111111";
        end if;

end process;
end crk7_arc_if;

---------------------------------------------------------

architecture crk7_arc_case of crk7 is
begin
cse: process
begin
   case (D0) is
      
      when "000"=>
            D1<= "11111110";
      when "001"=>
            D1 <= "11111101";
      when "010"=>
            D1 <= "11111011";
      when "011"=>
            D1 <= "11110111";
      when "100"=>
            D1 <= "11101111";
      when "101"=>
            D1 <= "11011111";
      when "110"=>
            D1 <= "10111111";
      when "111"=>
            D1 <= "01111111";
      when others=>
            D1 <= "11111111";
   end case;
				
end process;
end crk7_arc_case;
