
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.NovosTipos.ALL;

entity tb_mips2 is
end tb_mips2;

architecture cmp of tb_mips2 is
  
  component MIPS is
    Port(
      programa: in VetorWord(0 to 63);
      clk, reset: in std_logic
    );
  end component;
  
signal pro: VetorWord(0 to 63);
signal clock, rst: std_logic;
  
begin
  
  testa: MIPS port map(pro, clock, rst);
  
  --Demonstrando que comando de lw e sw funcionam, j� que n�o fizemos o c�digo do sort
  
  process
  begin
    rst <= '1';
    wait for 2 ns;
    rst <= '0';
   clock <= '0';
    
   pro(0) <= "00100000000000100000000000001010";
   pro(1) <= "10101100000000000000000000000000"; 
   pro(2) <= "10001100000000010000000000000000"; 
  	pro(3) <= "00000000000000000000000000000000"; 
  	pro(4) <= "00000000000000000000000000000000"; 
  	pro(5) <= "00000000000000000000000000000000"; 
  	pro(6) <= "00000000000000000000000000000000"; 
  	pro(7) <= "00000000000000000000000000000000"; 
  	pro(8) <= "00000000000000000000000000000000"; 
  	pro(9) <= "00000000000000000000000000000000";
  	pro(10) <= "00000000000000000000000000000000"; 
  	pro(11) <= "00000000000000000000000000000000";
  	pro(12) <= "00000000000000000000000000000000";
  	pro(13) <= "00000000000000000000000000000000";
  	pro(14) <= "00000000000000000000000000000000";
  	pro(15) <= "00000000000000000000000000000000";
  	pro(16) <= "00000000000000000000000000000000";
  	pro(17) <= "00000000000000000000000000000000";
  	pro(18) <= "00000000000000000000000000000000";
  	pro(19) <= "00000000000000000000000000000000";
  	pro(20) <= "00000000000000000000000000000000";
  	pro(21) <= "00000000000000000000000000000000";
  	pro(22) <= "00000000000000000000000000000000";
  	pro(23) <= "00000000000000000000000000000000";
  	pro(24) <= "00000000000000000000000000000000";
  	pro(25) <= "00000000000000000000000000000000";
  	pro(26) <= "00000000000000000000000000000000";
  	pro(27) <= "00000000000000000000000000000000";
  	pro(28) <= "00000000000000000000000000000000";
  	pro(29) <= "00000000000000000000000000000000";
  	pro(30) <= "00000000000000000000000000000000";
  	pro(31) <= "00000000000000000000000000000000";
  	pro(32) <= "00000000000000000000000000000000";
  	pro(33) <= "00000000000000000000000000000000";
  	pro(34) <= "00000000000000000000000000000000";
  	pro(35) <= "00000000000000000000000000000000";
  	pro(36) <= "00000000000000000000000000000000";
  	pro(37) <= "00000000000000000000000000000000";
  	pro(38) <= "00000000000000000000000000000000";
  	pro(39) <= "00000000000000000000000000000000";
  	pro(40) <= "00000000000000000000000000000000";
  	pro(41) <= "00000000000000000000000000000000";
  	pro(42) <= "00000000000000000000000000000000";
  	pro(43) <= "00000000000000000000000000000000";
  	pro(44) <= "00000000000000000000000000000000";
  	pro(45) <= "00000000000000000000000000000000";
  	pro(46) <= "00000000000000000000000000000000";
  	pro(47) <= "00000000000000000000000000000000";
  	pro(48) <= "00000000000000000000000000000000";
  	pro(49) <= "00000000000000000000000000000000";
  	pro(50) <= "00000000000000000000000000000000";
  	pro(51) <= "00000000000000000000000000000000";
  	pro(52) <= "00000000000000000000000000000000";
  	pro(53) <= "00000000000000000000000000000000";
  	pro(54) <= "00000000000000000000000000000000";
  	pro(55) <= "00000000000000000000000000000000";
  	pro(56) <= "00000000000000000000000000000000";
  	pro(57) <= "00000000000000000000000000000000";
  	pro(58) <= "00000000000000000000000000000000";
  	pro(59) <= "00000000000000000000000000000000";
  	pro(60) <= "00000000000000000000000000000000";
  	pro(61) <= "00000000000000000000000000000000";
  	pro(62) <= "00000000000000000000000000000000";
  	pro(63) <= "00000000000000000000000000000000";
  	
  	for i in 0 to 300 loop
  	  wait for 10 ns;
  	  clock <= '1';
  	  wait for 10 ns;
 	   clock <= '0';
   end loop;
  end process;
end cmp;