library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.numeric_std_unsigned.all;

entity Soma4 is
  Port(
    e: in std_logic_vector(31 downto 0);
    s: out std_logic_vector(31 downto 0)
  );
end Soma4;

architecture comp of Soma4 is
begin 
  s <= e + "00000000000000000000000000000100";
end comp;

