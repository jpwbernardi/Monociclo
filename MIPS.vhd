library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.NovosTipos.all;

entity MIPS is
  Port(
    programa: in VetorWord(0 to 63);
    clk: in std_logic
  );
end MIPS;

architecture cmp of MIPS is
  component BancoDeRegistradores is
    Port(
      RR1, RR2, WR: in signed(4 downto 0); --Read Register    Write Register
      WD, PC4: in signed(31 downto 0); --Write Data e PC + 4
      jal, RW: in std_logic;  --RegWrite
      RD1, RD2, ra: out signed(31 downto 0)
    );
  end component;
  
  component catExtend is
    Port(
     offset: in signed(25 downto 0);
     pc: in signed(3 downto 0);
     catExt: out signed(31 downto 0)
    );
  end component;
  
  component Controle is
    Port(
      Instruction: in signed(5 downto 0);
      ALUOp1, ALUOp2, Branch, MemRead, MemtoReg, jump, MemWrite, ALUSrc, RegWrite, BEQ, jal, jr, RegDst : out std_logic
    );
  end component;
  
  component DataMemory is --Instruction Memory
    Port(
      Adress: in signed(31 downto 0);
      WriteD: in signed(31 downto 0);
      MemWrite1, MemRead1: in std_logic;
      ReadData1: out signed(31 downto 0)
    );
  end component;
  
  component mux2x1 is
    Port(
      e0, e1 : in signed(4 downto 0);
      sel: in std_logic;
      s: out signed(4 downto 0)
    );
  end component;
  
  component Reg32 is
    Port(
      clk: in std_logic;
      e: in signed(31 downto 0);
      s1: out signed(31 downto 0)
    );
  end component;
  
  component Shift2 is
    Port(
      normal: in signed(31 downto 0);
      deslocado: out signed(31 downto 0)
    );
  end component;
  
  component SingExtend16to32 is
    Port(
      ee: in signed(15 downto 0);
      ss: out signed(31 downto 0)
    );
  end component;
  
  component Soma4 is
    Port(
      e4: in signed(31 downto 0);
      s4: out signed(31 downto 0)
    );
  end component;

  component Somador is
    Port(
      num1: in signed(31 downto 0);
      num2: in signed(31 downto 0);
      resp1: out signed(31 downto 0)
    );
  end component;
  
  component ULA is
    Port(
      op1, op2: in signed(31 downto 0);
      selULA: in signed(2 downto 0);
      zero: out std_logic;
      saidaa: out signed(31 downto 0)
    );
  end component;
  
  component ULAControl is
    Port(
      ALUOp : in signed(1 downto 0);
      func: in signed(5 downto 0);
      ULASel: out signed(2 downto 0)
    );
  end component;
  
begin

end cmp;