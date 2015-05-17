library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Reg32 is
  Port(
    ck: in std_logic;
    e: in signed(31 downto 0);
    s1: out signed(31 downto 0)
  );
end Reg32;

architecture comp of Reg32 is
begin
  process(ck)
  begin
    if(ck = '1') then
      s1 <= e;
    end if;
  end process;
end comp;
