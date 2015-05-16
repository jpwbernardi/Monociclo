library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity BancoDeRegistradores is
  Port(
    RR1, RR2, WR: in signed(4 downto 0); --Read Register    Write Register
    WD, PC4: in signed(31 downto 0); --Write Data e PC + 4
    jal, RW: in std_logic;  --RegWrite
    RD1, RD2, ra: out signed(31 downto 0)
  );
end BancoDeRegistradores;

architecture cmp of BancoDeRegistradores is
signal RD1aux, RD2aux : signed(31 downto 0);
signal r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23,
r24, r25, r26, r27, r28, r29, r30, r31: signed(31 downto 0);
begin
  RD1 <= RD1aux;
  RD2 <= RD2aux;
  ra <= r31;
  
  process (jal)
  begin
    if(jal = '1') then
      r31 <= PC4;
    end if;
  end process;

  process(WR, WD, RW)
  begin
		if(WR = "00000" and RW = '1') then
				r0 <= WD;
		elsif(WR = "00001" and RW = '1') then
				r1 <= WD;
		elsif(WR = "00010" and RW = '1') then
				r2 <= WD;
		elsif(WR = "00011" and RW = '1') then
				r3 <= WD;
		elsif(WR = "00100" and RW = '1') then
				r4 <= WD;
		elsif(WR = "00101" and RW = '1') then
				r5 <= WD;
		elsif(WR = "00110" and RW = '1') then
				r6 <= WD;
		elsif(WR = "00111" and RW = '1') then
				r7 <= WD;
		elsif(WR = "01000" and RW = '1') then
				r8 <= WD;
		elsif(WR = "01001" and RW = '1') then
				r9 <= WD;
		elsif(WR = "01010" and RW = '1') then
				r10 <= WD;
		elsif(WR = "01011" and RW = '1') then
				r11 <= WD;
		elsif(WR = "01100" and RW = '1') then
				r12 <= WD;
		elsif(WR = "01101" and RW = '1') then
				r13 <= WD;
		elsif(WR = "01110" and RW = '1') then
				r14 <= WD;
		elsif(WR = "01111" and RW = '1') then
				r15 <= WD;
		elsif(WR = "10000" and RW = '1') then
				r16 <= WD;
		elsif(WR = "10001" and RW = '1') then
				r17 <= WD;
		elsif(WR = "10010" and RW = '1') then
				r18 <= WD;
		elsif(WR = "10011" and RW = '1') then
				r19 <= WD;
		elsif(WR = "10100" and RW = '1') then
				r20 <= WD;
		elsif(WR = "10101" and RW = '1') then
				r21 <= WD;
		elsif(WR = "10110" and RW = '1') then
				r22 <= WD;
		elsif(WR = "10111" and RW = '1') then
				r23 <= WD;
		elsif(WR = "11000" and RW = '1') then
				r24 <= WD;
		elsif(WR = "11001" and RW = '1') then
				r25 <= WD;
		elsif(WR = "11010" and RW = '1') then
				r26 <= WD;
		elsif(WR = "11011" and RW = '1') then
				r27 <= WD;
		elsif(WR = "11100" and RW = '1') then
				r28 <= WD;
		elsif(WR = "11101" and RW = '1') then
				r29 <= WD;
		elsif(WR = "11110" and RW = '1') then
				r30 <= WD;
		elsif(WR = "11111" and RW = '1') then
				r31 <= WD;
    end if;
  end process;
  
  process(RR1)
  begin
  		if(RR1 = "00000") then
				RD1aux <= r0;
		elsif(RR1 = "00001") then
				RD1aux <= r1;
		elsif(RR1 = "00010") then
				RD1aux <= r2;
		elsif(RR1 = "00011") then
				RD1aux <= r3;
		elsif(RR1 = "00100") then
				RD1aux <= r4;
		elsif(RR1 = "00101") then
				RD1aux <= r5;
		elsif(RR1 = "00110") then
				RD1aux <= r6;
		elsif(RR1 = "00111") then
				RD1aux <= r7;
		elsif(RR1 = "01000") then
				RD1aux <= r8;
		elsif(RR1 = "01001") then
				RD1aux <= r9;
		elsif(RR1 = "01010") then
				RD1aux <= r10;
		elsif(RR1 = "01011") then
				RD1aux <= r11;
		elsif(RR1 = "01100") then
				RD1aux <= r12;
		elsif(RR1 = "01101") then
				RD1aux <= r13;
		elsif(RR1 = "01110") then
				RD1aux <= r14;
		elsif(RR1 = "01111") then
				RD1aux <= r15;
		elsif(RR1 = "10000") then
				RD1aux <= r16;
		elsif(RR1 = "10001") then
				RD1aux <= r17;
		elsif(RR1 = "10010") then
				RD1aux <= r18;
		elsif(RR1 = "10011") then
				RD1aux <= r19;
		elsif(RR1 = "10100") then
				RD1aux <= r20;
		elsif(RR1 = "10101") then
				RD1aux <= r21;
		elsif(RR1 = "10110") then
				RD1aux <= r22;
		elsif(RR1 = "10111") then
				RD1aux <= r23;
		elsif(RR1 = "11000") then
				RD1aux <= r24;
		elsif(RR1 = "11001") then
				RD1aux <= r25;
		elsif(RR1 = "11010") then
				RD1aux <= r26;
		elsif(RR1 = "11011") then
				RD1aux <= r27;
		elsif(RR1 = "11100") then
				RD1aux <= r28;
		elsif(RR1 = "11101") then
				RD1aux <= r29;
		elsif(RR1 = "11110") then
				RD1aux <= r30;
		elsif(RR1 = "11111") then
				RD1aux <= r31;
		end if;
	end process;

  process(RR2)
  begin
  		if(RR2 = "00000") then
				RD2aux <= r0;
		elsif(RR2 = "00001") then
				RD2aux <= r1;
		elsif(RR2 = "00010") then
				RD2aux <= r2;
		elsif(RR2 = "00011") then
				RD2aux <= r3;
		elsif(RR2 = "00100") then
				RD2aux <= r4;
		elsif(RR2 = "00101") then
				RD2aux <= r5;
		elsif(RR2 = "00110") then
				RD2aux <= r6;
		elsif(RR2 = "00111") then
				RD2aux <= r7;
		elsif(RR2 = "01000") then
				RD2aux <= r8;
		elsif(RR2 = "01001") then
				RD2aux <= r9;
		elsif(RR2 = "01010") then
				RD2aux <= r10;
		elsif(RR2 = "01011") then
				RD2aux <= r11;
		elsif(RR2 = "01100") then
				RD2aux <= r12;
		elsif(RR2 = "01101") then
				RD2aux <= r13;
		elsif(RR2 = "01110") then
				RD2aux <= r14;
		elsif(RR2 = "01111") then
				RD2aux <= r15;
		elsif(RR2 = "10000") then
				RD2aux <= r16;
		elsif(RR2 = "10001") then
				RD2aux <= r17;
		elsif(RR2 = "10010") then
				RD2aux <= r18;
		elsif(RR2 = "10011") then
				RD2aux <= r19;
		elsif(RR2 = "10100") then
				RD2aux <= r20;
		elsif(RR2 = "10101") then
				RD2aux <= r21;
		elsif(RR2 = "10110") then
				RD2aux <= r22;
		elsif(RR2 = "10111") then
				RD2aux <= r23;
		elsif(RR2 = "11000") then
				RD2aux <= r24;
		elsif(RR2 = "11001") then
				RD2aux <= r25;
		elsif(RR2 = "11010") then
				RD2aux <= r26;
		elsif(RR2 = "11011") then
				RD2aux <= r27;
		elsif(RR2 = "11100") then
				RD2aux <= r28;
		elsif(RR2 = "11101") then
				RD2aux <= r29;
		elsif(RR2 = "11110") then
				RD2aux <= r30;
		elsif(RR2 = "11111") then
				RD2aux <= r31;
    end if;
  end process;

end cmp;
