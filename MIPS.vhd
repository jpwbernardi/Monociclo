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
      ALUOp1, ALUOp2, Branch, MemRead, MemtoReg, jump, MemWrite, ALUSrc, RegWrite, BEQ, jal, RegDst : out std_logic
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
      jr: out std_logic;
      ULASel: out signed(2 downto 0)
    );
  end component;
  
  component mux32 is
    Port(
      ee0, ee1 : in signed(31 downto 0);
      seel: in std_logic;
      sss: out signed(31 downto 0)
    );
  end component;

signal instrucaoatual, proxinstrucao, PCmais4: signed(31 downto 0);
signal writeRegister: signed(4 downto 0);
signal cSelULA: signed(2 downto 0);
signal cALUOp: signed(1 downto 0);
signal writeData, Read1, Read2, extendido, exdeslocado, catExtendido, entrada2ULA, saidaULA, muxBranchIn, muxBranchOut, muxPC2Out, cra, creadData: signed(31 downto 0);
signal cjal, cRegWrite, cALUop1, cALUOp2, cBranch, cMemRead, cMemtoReg, cjump, cMemWrite, cALUSrc, cBEQ, cRegDst, czero, cjr, selMuxPC1: std_logic;
begin

  cALUOp <= cALUop1 & cALUOp2;
  selMuxPC1 <= cBranch and (czero xnor cBEQ);
  control: Controle port map(instrucaoatual(31 downto 26), cALUOp1, cALUOp2, cBranch, cMemRead, cMemtoReg, cjump, cMemWrite, cALUSrc, cRegWrite, cBEQ, cjal, cRegDst);
  muxBanco: mux2x1 port map(instrucaoatual(20 downto 16), instrucaoatual(15 downto 11), cRegDst, writeRegister);
  bdr: bancoDeRegistradores port map(instrucaoatual(25 downto 21), instrucaoatual(20 downto 16), writeRegister, writeData, PCmais4, cjal, cRegWrite, Read1, Read2, cra);  
    

  signExtend: SingExtend16to32 port map(instrucaoatual(15 downto 0), extendido);
  muxULA: mux32 port map(Read2, extendido, cALUSrc, entrada2ULA);
  shift: Shift2 port map(extendido, exdeslocado);
  ULAla: ULA port map(Read1, entrada2ULA, cSelULA, czero, saidaULA);
  controlULA: ULAControl port map(cALUOp, instrucaoatual(5 downto 0), cjr, cSelULA);
  somar4: Soma4 port map(instrucaoatual, PCmais4);
  somadoor: Somador port map(PCmais4, exdeslocado, muxBranchIn);
  muxPc1: mux32 port map(PCmais4, muxBranchIn, selMuxPC1, muxBranchOut);
  muxPc2: mux32 port map(muxBranchOut, catExtendido, cjump, muxPC2Out);
  oioio: catExtend port map(instrucaoatual(25 downto 0), PCmais4(31 downto 28), catExtendido);
  muxPc3: mux32 port map(muxPC2Out, cra, cjr, proxinstrucao);
  memoria: DataMemory port map(saidaULA, Read2, cMemWrite, cMemRead, creadData);
  muxMemoria: mux32 port map(saidaULA, creadData, cMemtoReg, writeData);  

  
  process(clk)
  begin
    if(clk = '1' and instrucaoatual = "UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU") then
      instrucaoatual <= "00000000000000000000000000000000";
    elsif(clk = '1') then 
      instrucaoatual <= proxinstrucao;
    end if;
  end process;

end cmp;