library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Reg32 is
  Port(
    clk: in std_logic;
    e: in signed(31 downto 0);
    s: out signed(31 downto 0)
  );
end Reg32;

architecture comp of Reg32 is
begin
  process(clk)
  begin
    if(clk = '1') then
      s <= e;
    end if;
  end process;
end comp;
