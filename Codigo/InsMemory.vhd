library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.NovosTipos.all;

entity InsMemory is --Instruction Memory
  Port(
    ReadAdress: in signed(31 downto 0);
    Instruction: out signed(31 downto 0)
  );
end InsMemory;

architecture cmp of InsMemory is
signal memoria: VetorByte(0 to 255);  --256 Bytes de memória
begin
  
  

end cmp;
  