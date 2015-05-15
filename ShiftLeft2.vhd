library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

entity Shift2 is
  Port(
    normal: in std_logic_vector(31 downto 0);
    deslocado: out std_logic_vector(31 downto 0)
  );
end Shift2;

architecture cmp of Shift2 is
begin
  deslocado <= normal(29 downto 0) & "00";
end cmp;
