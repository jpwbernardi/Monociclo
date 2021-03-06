library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mux5bits is
    Port(
      e0, e1 : in signed(4 downto 0);
      sel: in std_logic;
      s: out signed(4 downto 0)
    );
end mux5bits;

architecture cmp of mux5bits is
begin
  process(sel, e0, e1)
  begin
    if(sel = '0') then
      s <= e0;
    else
      s <= e1;
    end if;
end process;
end cmp;
