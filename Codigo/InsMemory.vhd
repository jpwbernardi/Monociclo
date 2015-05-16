library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity InsMemory is
  Port(
    ReadAdress: in signed(31 downto 0);
    Instruction: out signed(31 downto 0)
  );
end InsMemory;

architecture cmp of InsMemory is
begin

end cmp;
  