library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity TBBancoDeRegistradores is
end TBBancoDeRegistradores;

architecture cmp of TBBancoDeRegistradores is
  
component BancoDeRegistradores is
  Port(
    RR1, RR2, WR: in signed(4 downto 0); --Read Register    Write Register
    WD: in signed(31 downto 0); --Write Data
    jal, RW: in std_logic;  --RegWrite
    RD1, RD2: out signed(31 downto 0)
  );
end component;

signal Read1, Read2, Write: signed(4 downto 0);
signal Data, s1, s2: signed(31 downto 0);
signal jaltb, clk: std_logic;

begin
TB: BancoDeRegistradores port map(Read1, Read2, Write, Data, jaltb, clk, s1, s2);

process
begin  
  clk <= '0';
--Teste 1
  Write <= "00010";
  Data  <= "00000000000000000000000000000100";
  wait for 2 ns;
  clk   <= '1';
  wait for 2 ns;
  clk   <= '0';
  Write <= "00100";
  Data  <= "00000000000000000000000000000010";
  wait for 2 ns;
  clk   <= '1';
  wait for 2 ns;
  clk   <= '0';

  Read1 <= "00010";
  Read2 <= "00100";
  wait for 10 ns;
  if(s1 /= "00000000000000000000000000000100") then
    assert false
    report "Erro s1";
  end if;
  if(s2 /= "00000000000000000000000000000010") then
    assert false
    report "Erro s2";
  end if;
  
end process;

end;