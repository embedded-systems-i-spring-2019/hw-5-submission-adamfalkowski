library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all

entity crk6 is
  Port (
        mux_input: in std_logic_vector (7 downto 0);
        SEL: in std_logic_vector (2 downto 0);
        mux_output: out std_logic
        );
end crk6;
-------------------------------------------------
--architecture using if statements:
architecture crk6_arc_if of crk6 is
begin
  process
    if(SEL = "000") then
      mux_output <= mux_input(0);
     else if (SEL = "001") then
            mux_output <= mux_input(1);
     else if  (SEL = "010") then
            mux_output <= mux_input(2);
     else if (SEL = "011") then
            mux_outout <= mux_input(3);
     else if (SEL = "100") then
            mux_output <= mux_input(4);
     else if (SEL = "101") then
            mux_output <= mux_input(5);
     else if (SEL = "110") then
            mux_output <= mux_input(6);
     else if (SEL = "111") then
            mux_output <= mux_input(7);
        else 
            mux_output <= '0';
        end if;
    end process;
end crk6_arc_if;

---------------------------------------------------
--architecture using case
architecture crk6_arc_case of crk6 is
begin
process
begin

   case (SEL) is
   
      when "000" =>
         mux_output <= mux_input(0);
      when "001" =>
        mux_output <= mux_input(1);
      when "010" =>
         mux_output <= mux_input(2);
      when "011" =>
         mux_outputt <= mux_input(3);
      when "100" =>
         mux_output <= mux_input(4);
      when "101" =>
         mux_output <= mux_input(5);
      when "110" =>
        mux_output <= mux_input(6);
      when "111" =>
         mux_output <= mux_input(7);
      when others =>
        mux_output <= '0';
   end case;
				
end process;
end crk6_arc_case;

  
