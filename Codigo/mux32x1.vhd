library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mux32x1 is
  Port(
    in1,  in2,  in3,  in4,  in5,  in6,  in7,  in8,  in9,  in10,  in11,  in12,  in13,  in14,  in15,  in16,  in17,  in18,  in19,  in20,  in21,  in22,  in23,  in24,  in25,  in26,  in27,  in28,  in29,  in30,  in31,  in32: in std_logic_vector(31 downto 0);
    sel: in std_logic_vector(4 downto 0);
    s: out std_logic_vector(31 downto 0)
  );
end mux32x1;


architecture comp of mux32x1 is
begin
  process(sel)
  begin
  		if(sel = "00000") then
			s <= in1;
		elsif(sel = "00001") then
			s <= in2;
		elsif(sel = "00010") then
			s <= in3;
		elsif(sel = "00011") then
			s <= in4;
		elsif(sel = "00100") then
			s <= in5;
		elsif(sel = "00101") then
			s <= in6;
		elsif(sel = "00110") then
			s <= in7;
		elsif(sel = "00111") then
			s <= in8;
		elsif(sel = "01000") then
			s <= in9;
		elsif(sel = "01001") then
			s <= in10;
		elsif(sel = "01010") then
			s <= in11;
		elsif(sel = "01011") then
			s <= in12;
		elsif(sel = "01100") then
			s <= in13;
		elsif(sel = "01101") then
			s <= in14;
		elsif(sel = "01110") then
			s <= in15;
		elsif(sel = "01111") then
			s <= in16;
		elsif(sel = "10000") then
			s <= in17;
		elsif(sel = "10001") then
			s <= in18;
		elsif(sel = "10010") then
			s <= in19;
		elsif(sel = "10011") then
			s <= in20;
		elsif(sel = "10100") then
			s <= in21;
		elsif(sel = "10101") then
			s <= in22;
		elsif(sel = "10110") then
			s <= in23;
		elsif(sel = "10111") then
			s <= in24;
		elsif(sel = "11000") then
			s <= in25;
		elsif(sel = "11001") then
			s <= in26;
		elsif(sel = "11010") then
			s <= in27;
		elsif(sel = "11011") then
			s <= in28;
		elsif(sel = "11100") then
			s <= in29;
		elsif(sel = "11101") then
			s <= in30;
		elsif(sel = "11110") then
			s <= in31;
		elsif(sel = "11111") then
			s <= in32;
    end if;
  end process;
end comp;
