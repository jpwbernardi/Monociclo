library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ULAControl is
  Port(
    ALUOp : in signed(1 downto 0);
    func: in signed(5 downto 0);
    jr: out std_logic;
    ULASel: out signed(2 downto 0)
  );
end ULAControl;

architecture cmp of ULAControl is
begin
  process(ALUOp, func)
  begin
    if(ALUOp = "00") then
      ULASel <= "010";
      jr <= '0';
    elsif(ALUOp = "01") then
      ULASel <= "110";
      jr <= '0';
    elsif(ALUOp = "10") then
      ULASel <= "111";
      jr <= '0';
    elsif(ALUOp = "11") then
      if(func = "100000") then
        ULASel <= "010";
        jr <= '0';
      elsif(func = "100010") then
        ULASel <= "110";
        jr <= '0';
      elsif(func = "101010") then
        ULASel <= "111";
        jr <= '0';
      elsif(func = "100100") then
        ULASel <= "000";
        jr <= '0';
      elsif(func = "001000") then --jr!
        ULASel <= "010";
        jr <= '1';
      end if;
    end if;
  end process;
end cmp;
