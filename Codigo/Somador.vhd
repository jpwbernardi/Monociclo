library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Somador is
  Port(
    num1: in signed(31 downto 0);
    num2: in signed(31 downto 0);
    resp1: out signed(31 downto 0)
  );
end Somador;

architecture comp of Somador is
begin
  resp1 <= num1 + num2;
end comp;
