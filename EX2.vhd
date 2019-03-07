library IEEE;
use IEEE.std_logic_1164.all;

entity crk2 is
  port (
        A_1, A_2, B_1, B_2, D_1 : in std_logic;
	      E_out : out std_logic
       );
 end crk2;
  
 architecture case_arc of crk2 is 
   
 signal vec_input : std_logic_vector(4 downto 0);
  
 begin 
 vec_input <=  A_1&A_2&B_1&B_2&D_1;
   process
    begin 
        case (vec_input) is
            --output e_out only zero when all for input into the OR are zero
          when "00001" => E_out <= '0';
          when "10001" => E_out <= '0';
          when "01001" => E_out <= '0';
          when "00000" => E_out <= '0';
          when others => E_out <='1';
        end case;
      end process;
     end case_arc;
          
  
  
