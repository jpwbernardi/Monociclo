library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

entity catExtend is
  Port(
    offset: in std_logic_vector(25 downto 0);
    pc: in std_logic_vector(3 downto 0);
    catExt: out std_logic_vector(31 downto 0)
  );
end catExtend;

architecture cmp of catExtend is
begin
  catExt <= pc & offset & "00";
end cmp;
