-- diviseur de frequence 50Mhz --> 1Hz
-- outil materiel : carte DE0 Nano
-- outil logiciel : Quartus II prime 18.1

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity TimerLed is
	generic(	max		: natural:=25000000);
	port (	clk 		: in std_logic;
					rst 		: in std_logic;
					led		  : out std_logic);
end TimerLed;

architecture arch_TimerLed of TimerLed is
begin
process(clk, rst)
	variable temp:integer range 0 to max;
	variable tout:std_logic;
begin
	if rst='0' then
									led<='0';
									temp:=0;
									tout:='0';
	elsif (rising_edge (clk)) then
									temp:=temp+1;
											if temp=max then
													temp:=0;
													tout:=not tout;
											end if;
	led<=tout;
	end if;
end process;
end arch_TimerLed;