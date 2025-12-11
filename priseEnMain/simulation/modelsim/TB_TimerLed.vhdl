-- Vhdl Test Bench template for design  :  TimerLed
-- Simulation tool : ModelSim-Altera (VHDL)

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY TB_TimerLed IS
END TB_TimerLed;

ARCHITECTURE TimerLed_arch OF TB_TimerLed IS
		-- constants
		-- Constante pour la période d'horloge
					constant clk_period : time := 20 ns;
		-- signals
					SIGNAL clk : STD_LOGIC;
					SIGNAL led : STD_LOGIC;
					SIGNAL rst : STD_LOGIC;	
					
COMPONENT TimerLed
	PORT (
				clk : IN STD_LOGIC;
				led : OUT STD_LOGIC;
				rst : IN STD_LOGIC
	);
END COMPONENT;

BEGIN
i1 : TimerLed
PORT MAP (
-- list connections between master ports and signals
clk => clk,
led => led,
rst => rst
);

-- Génération de l'horloge
clk_process : process
begin
	while true loop
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	end loop;
end process;

-- Stimulus
rst_process : process
begin
		rst <= '0';
		wait for 2*clk_period;
		rst <= '1';wait;
end process;

END TimerLed_arch;