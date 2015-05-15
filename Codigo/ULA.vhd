library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ULA is
  Port(
    op1, op2: in signed(31 downto 0);
    selULA: in signed(2 downto 0);
    zero: out std_logic;
    saidaa: out signed(31 downto 0)
  );
end ULA;

architecture comp of ULA is
signal aux: signed(31 downto 0);
begin
  saidaa <= aux;
  process(aux)
  begin
    if(aux = "00000000000000000000000000000000") then
      zero <= '1';
    end if;
  end process;

  process(op1, op2, selULA)
  begin
    if(selULA = "000") then
      aux <= op1 AND op2;
    elsif(selULA = "001") then
      aux <= op1 OR op2;
    elsif(selULA = "010") then
      aux <= op1 + op2;
    elsif(selULA = "110") then
      aux <= op1 - op2;
    elsif(selULA = "111") then
      if((op1 - op2) >= 0) then
        aux <= "00000000000000000000000000000000";
      else aux <= "00000000000000000000000000000001";
      end if;
    end if;
  end process;
end comp;
