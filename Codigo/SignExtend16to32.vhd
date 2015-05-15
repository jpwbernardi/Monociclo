library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity SingExtend16to32 is
  Port(
    e: in signed(15 downto 0);
    s: out signed(31 downto 0)
  );
end SingExtend16to32;

architecture comp of SingExtend16to32 is
begin
  s <= e & "0000000000000000";
end comp;
