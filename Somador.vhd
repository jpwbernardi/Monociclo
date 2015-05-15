library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.numeric_std_unsigned.all;

entity Soma is
  Port(
    num1: in std_logic_vector(31 downto 0);
    num2: in std_logic_vector(31 downto 0);
    resp1: out std_logic_vector(31 downto 0)
  );
end Soma;

architecture comp of Soma is
begin 
  resp1 <= num1 + num2;
end comp;

