library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity BancoDeRegistradores is
  Port(
    RR1, RR2, WR: in signed(4 downto 0);
    WD: in signed(31 downto 0);
    jal, RW: in std_logic;
    RD1, RD2: out signed(31 downto 0)
  );
end BancoDeRegistradores;

architecture cmp of BancoDeRegistradores is
begin
end cmp;
