library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mux32 is
    Port(
      ee0, ee1 : in signed(31 downto 0);
      seel: in std_logic;
      sss: out signed(31 downto 0)
    );
end mux32;

architecture cmp of mux32 is
begin
  process(seel, ee0, ee1)
  begin
    if(seel = '0') then
      sss <= ee0;
    else
      sss <= ee1;
    end if;
end process;
end cmp;

