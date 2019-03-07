library IEEE;
use IEEE.std_logic_1164.all;

entity crk2 is
  port (
        A_1, A_2, B_1, B_2, D_1 : in std_logic;
	      E_out : out std_logic
       );
 end crk2;
 
architecture if_arc of crk2 
 
signal vec_input : std_logic_vector(4 downto 0);
  
 begin 
 vec_input <=  A_1&A_2&B_1&B_2&D_1;
   process
    begin 
        
            --output e_out only zero when all for input into the OR are zero
          if(vec_input = "00001") then E_out <= '0';
          else if (vec_input = "10001") then E_out <= '0';
          else if (vec_input ="01001" ) then E_out <= '0';
          else if (vec_input = "00000") then E_out <= '0';
          else 
		  E_out <='1';
        end case;
      end process;
end if_arc;
 
