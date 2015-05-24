library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.NovosTipos.all;

entity DataMemory is --Instruction Memory
  Port(
    Adress: in signed(31 downto 0);
    WriteD: in signed(31 downto 0);
    MemWrite1, MemRead1: in std_logic;
    ReadData1: out signed(31 downto 0)
  );
end DataMemory;

architecture cmp of DataMemory is
signal memoria: VetorWord(0 to 63);  --256 Bytes de memória  (64 * 32 bits)
begin
  process(WriteD, Adress, MemWrite1)
  begin
    if(MemWrite1 = '1') then
      memoria(to_integer(Adress)) <= WriteD;
    end if;
  end process;
  
  process(MemRead1, Adress)
  begin
    if(MemRead1 = '1') then
      ReadData1 <= memoria(to_integer(Adress)); 
    end if;
  end process;
end cmp;
  

