library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity TBDataMemory is
end TBDataMemory;

architecture cmp of TBDataMemory is
  
component DataMemory is --Instruction Memory
  Port(
    Adress: in signed(31 downto 0);
    WriteD: in signed(31 downto 0);
    MemWrite1, MemRead1: in std_logic;
    ReadData1: out signed(31 downto 0)
  );
end component;

signal Adresstb, WriteDatatb, readdataTb: signed(31 downto 0);
signal MemWriteTb, MemReadTb: std_logic;

begin
TB: DataMemory port map(Adresstb, WriteDatatb, MemWriteTb, MemReadTb, readdataTb);

process
begin  
--Teste 1
  Adresstb <= "00000000000000000000000000000100"; --Endereço de memoria 4
  MemReadTb <= '0';
  MemWriteTb <= '1'; --"Escreva o dado"
  WriteDatatb  <= "00000000000000000000000000000100";

  wait for 10 ns;

  MemWriteTb <= '0';
  MemReadTb <= '1';

  wait for 10 ns;
  
  if(readdataTb /= "00000000000000000000000000000100") then
    assert false
    report "Erro s1";
  end if;
 
end process;

end;
