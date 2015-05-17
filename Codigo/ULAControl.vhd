library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ULAControl is
  Port(
    ALUOp : in signed(1 downto 0);
    func: in signed(5 downto 0);
    ULASel: out signed(2 downto 0)
  );
end ULAControl;

architecture cmp of ULAControl is
begin
  process(ALUOp, func)
  begin
    if(ALUOp = "00") then
      ULASel <= "010";
    elsif(ALUOp = "01") then
      ULASel <= "110";
    elsif(ALUOp = "10") then
      ULASel <= "111";
    elsif(ALUOp = "11") then
      if(func = "100000") then
        ULASel <= "010";
      elsif(func = "100010") then
        ULASel <= "110";
      elsif(func = "101010") then
        ULASel <= "111";
      elsif(func = "100100") then
        ULASel <= "000";
      end if;
    end if;
  end process;
end cmp;
