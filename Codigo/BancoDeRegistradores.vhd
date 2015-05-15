library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

entity BancoDeRegistradores is
  Port(
    RR1, RR2, WR: in std_logic_vector(4 downto 0);
    WD: in std_logic_vector(31 downto 0);
    jal, RW: in std_logic;
    RD1, RD2: out std_logic_vector(31 downto 0)
  );
end BancoDeRegistradores;

architecture cmp of BancoDeRegistradores is
  
component Reg32 is
  Port(
    clk: in std_logic;
    e: in std_logic_vector(31 downto 0);
    s: out std_logic_vector(31 downto 0)
  );
end component;

component mux32x1 is
  Port(
    in1,  in2,  in3,  in4,  in5,  in6,  in7,  in8,  in9,  in10,  in11,  in12,  in13,  in14,  in15,  in16,  in17,  in18,  in19,  in20,  in21,  in22,  in23,  in24,  in25,  in26,  in27,  in28,  in29,  in30,  in31,  in32: in std_logic_vector(31 downto 0);
    sel: in std_logic_vector(4 downto 0);
    s: out std_logic_vector(31 downto 0)
  );
end component;
	
signal registrador1, registrador2, registrador3, registrador4, registrador5, registrador6, registrador7, registrador8, registrador9, registrador10, registrador11, registrador12, registrador13, registrador14, registrador15, registrador16, registrador17, registrador18, registrador19, registrador20, registrador21, registrador22, registrador23, registrador24, registrador25, registrador26, registrador27, registrador28, registrador29, registrador30, registrador31, registrador32, s1, s2: std_logic_vector(31 downto 0);
begin
  pm1: Reg32 port map(RW, WD, registrador1);
  pm2: Reg32 port map(RW, WD, registrador2);
  pm3: Reg32 port map(RW, WD, registrador3);
  pm4: Reg32 port map(RW, WD, registrador4);
  pm5: Reg32 port map(RW, WD, registrador5);
  pm6: Reg32 port map(RW, WD, registrador6);
  pm7: Reg32 port map(RW, WD, registrador7);
  pm8: Reg32 port map(RW, WD, registrador8);
  pm9: Reg32 port map(RW, WD, registrador9);
  pm10: Reg32 port map(RW, WD, registrador10);
  pm11: Reg32 port map(RW, WD, registrador11);
  pm12: Reg32 port map(RW, WD, registrador12);
  pm13: Reg32 port map(RW, WD, registrador13);
  pm14: Reg32 port map(RW, WD, registrador14);
  pm15: Reg32 port map(RW, WD, registrador15);
  pm16: Reg32 port map(RW, WD, registrador16);
  pm17: Reg32 port map(RW, WD, registrador17);
  pm18: Reg32 port map(RW, WD, registrador18);
  pm19: Reg32 port map(RW, WD, registrador19);
  pm20: Reg32 port map(RW, WD, registrador20);
  pm21: Reg32 port map(RW, WD, registrador21);
  pm22: Reg32 port map(RW, WD, registrador22);
  pm23: Reg32 port map(RW, WD, registrador23);
  pm24: Reg32 port map(RW, WD, registrador24);
  pm25: Reg32 port map(RW, WD, registrador25);
  pm26: Reg32 port map(RW, WD, registrador26);
  pm27: Reg32 port map(RW, WD, registrador27);
  pm28: Reg32 port map(RW, WD, registrador28);
  pm29: Reg32 port map(RW, WD, registrador29);
  pm30: Reg32 port map(RW, WD, registrador30);
  pm31: Reg32 port map(RW, WD, registrador31);
  pm32: Reg32 port map(RW, WD, registrador32);
    
  
  pmmux1: Mux32x1 port map(registrador1, registrador2, registrador3, registrador4, registrador5, registrador6, registrador7, registrador8, registrador9, registrador10, registrador11, registrador12, registrador13, registrador14, registrador15, registrador16, registrador17, registrador18, registrador19, registrador20, registrador21, registrador22, registrador23, registrador24, registrador25, registrador26, registrador27, registrador28, registrador29, registrador30, registrador31, registrador32, RR1, RD1);
  
  pmmux2: Mux32x1 port map(registrador1, registrador2, registrador3, registrador4, registrador5, registrador6, registrador7, registrador8, registrador9, registrador10, registrador11, registrador12, registrador13, registrador14, registrador15, registrador16, registrador17, registrador18, registrador19, registrador20, registrador21, registrador22, registrador23, registrador24, registrador25, registrador26, registrador27, registrador28, registrador29, registrador30, registrador31, registrador32, RR2, RD2);

end cmp;