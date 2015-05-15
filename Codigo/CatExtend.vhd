library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity catExtend is
  Port(
    offset: in signed(25 downto 0);
    pc: in signed(3 downto 0);
    catExt: out signed(31 downto 0)
  );
end catExtend;

architecture cmp of catExtend is
begin
  catExt <= pc & offset & "00";
end cmp;
