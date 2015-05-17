library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Soma4 is
  Port(
    e4: in signed(31 downto 0);
    s4: out signed(31 downto 0)
  );
end Soma4;

architecture comp of Soma4 is
begin
  s4 <= e4 + "00000000000000000000000000000100";
end comp;
