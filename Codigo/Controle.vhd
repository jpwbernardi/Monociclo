library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Controle is
  Port(
    Instruction: in signed(5 downto 0);
    ALUOp1, ALUOp2, Branch, MemRead, MemtoReg, jump, MemWrite, ALUSrc, RegWrite, BEQ, jal, jr, RegDst : out std_logic
  );
end Controle;

architecture cmp of Controle is
begin
  process(Instruction)
  begin
    case Instruction is
      when "000000" =>  --Tipo R
        RegDst <= '1';
        Branch <= '0';
        jump <= '0';
        MemRead <= '0';
        MemtoReg <= '0';
        ALUOp1 <= '1';
        ALUOp2 <=  '1';
        MemWrite <= '0';
        ALUSrc  <= '0';
        RegWrite <= '1';
        jr <= '0';
        jal <= '0';
        BEQ <= '0';
      when "000101" =>  --BNE
        RegDst <= '0';
        Branch <= '1';
        jump <= '0';
        MemRead <= '0';
        MemtoReg <= '0';
        ALUOp1 <= '0';
        ALUOp2 <=  '1';
        MemWrite <= '0';
        ALUSrc  <= '0';
        RegWrite <= '0';
        jr <= '0';
        jal <= '0';
        BEQ <= '0';
      when "000100" =>  --BEQ
        RegDst <= '0';
        Branch <= '1';
        jump <= '0';
        MemRead <= '0';
        MemtoReg <= '0';
        ALUOp1 <= '0';
        ALUOp2 <=  '1';
        MemWrite <= '0';
        ALUSrc  <= '0';
        RegWrite <= '0';
        jr <= '0';
        jal <= '0';
        BEQ <= '1';
      when "001100" => --SLTI
        RegDst <= '0';
        Branch <= '0';
        jump <= '0';
        MemRead <= '0';
        MemtoReg <= '0';
        ALUOp1 <= '1';
        ALUOp2 <=  '0';
        MemWrite <= '0';
        ALUSrc  <= '1';
        RegWrite <= '1';
        jr <= '0';
        jal <= '0';
        BEQ <= '0';
      when "100011" => --Load
        RegDst <= '0';
        Branch <= '0';
        jump <= '0';
        MemRead <= '1';
        MemtoReg <= '1';
        ALUOp1 <= '0';
        ALUOp2 <=  '0';
        MemWrite <= '0';
        ALUSrc  <= '1';
        RegWrite <= '1';
        jr <= '0';
        jal <= '0';
        BEQ <= '0';
      when "101011" => --SW
        RegDst <= '0';
        Branch <= '0';
        jump <= '0';
        MemRead <= '0';
        MemtoReg <= '0';
        ALUOp1 <= '0';
        ALUOp2 <=  '0';
        MemWrite <= '1';
        ALUSrc  <= '1';
        RegWrite <= '0';
        jr <= '0';
        jal <= '0';
        BEQ <= '0';
      when "001000" => --ADDI
        RegDst <= '0';
        Branch <= '0';
        jump <= '0';
        MemRead <= '0';
        MemtoReg <= '0';
        ALUOp1 <= '0';
        ALUOp2 <=  '0';
        MemWrite <= '0';
        ALUSrc  <= '1';
        RegWrite <= '1';
        jr <= '0';
        jal <= '0';
        BEQ <= '0';
      when "000010" => --Jump
        RegDst <= '0';
        Branch <= '0';
        jump <= '1';
        MemRead <= '0';
        MemtoReg <= '0';
        ALUOp1 <= '0';
        ALUOp2 <=  '0';
        MemWrite <= '0';
        ALUSrc  <= '0';
        RegWrite <= '0';
        jr <= '0';
        jal <= '0';
        BEQ <= '0';
      when "000011" => --JAL
        RegDst <= '0';
        Branch <= '0';
        jump <= '1';
        MemRead <= '0';
        MemtoReg <= '0';
        ALUOp1 <= '0';
        ALUOp2 <=  '0';
        MemWrite <= '0';
        ALUSrc  <= '0';
        RegWrite <= '0';
        jr <= '0';
        jal <= '1';
        BEQ <= '0';
      when others =>
        RegDst <= '0';
        Branch <= '0';
        jump <= '0';
        MemRead <= '0';
        MemtoReg <= '0';
        ALUOp1 <= '0';
        ALUOp2 <=  '0';
        MemWrite <= '0';
        ALUSrc  <= '0';
        RegWrite <= '0';
        jr <= '0';
        jal <= '0';
        BEQ <= '0';
    end case;
  end process;
end cmp;