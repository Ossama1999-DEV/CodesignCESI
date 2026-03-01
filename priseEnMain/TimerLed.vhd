-- But: diviseur de frequence 50 MHz vers 1 Hz
-- Cible materielle: carte DE0 Nano
-- Outil de synthese: Quartus Prime 18.1

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity TimerLed is
	-- max definit la demi periode de basculement de la LED
	generic(	max		: natural:=25000000);
	-- clk: horloge 50 MHz, rst: reset actif bas, led: sortie LED
	port (	clk 		: in std_logic;
					rst 		: in std_logic;
					led		  : out std_logic);
end TimerLed;

architecture arch_TimerLed of TimerLed is
begin
process(clk, rst)
	-- temp compte les cycles horloge, tout stocke letat courant de la LED
	variable temp:integer range 0 to max;
	variable tout:std_logic;
begin
	-- reset asynchrone actif bas
	if rst='0' then
									led<='0';
									temp:=0;
									tout:='0';
	elsif (rising_edge (clk)) then
									-- incrementation a chaque front montant
									temp:=temp+1;
											if temp=max then
													-- a max: remise a zero et inversion LED
													temp:=0;
													tout:=not tout;
											end if;
	-- mise a jour de la sortie
	led<=tout;
	end if;
end process;
end arch_TimerLed;