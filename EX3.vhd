library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity crk3 is
  Port (
        A_1, A_2, B_1, B_2, D_1: in std_logic;
        E_out: out std_logic
        );
end crk3;

architecture crk3_arc of crk3 is
begin 
  E_out <= (A_1 AND A_2) OR (B_1 OR B_2) OR ((NOT D_1) AND B_2);
end crk3_arc;


