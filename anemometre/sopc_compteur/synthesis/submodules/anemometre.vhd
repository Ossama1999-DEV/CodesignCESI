library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity anemometre is
    Port (
        clk_50M            : in  std_logic;
        raz_n              : in  std_logic;
        in_freq_anemometre : in  std_logic;
        continu            : in  std_logic;
        start_stop         : in  std_logic;
        data_anemometre    : out std_logic_vector(7 downto 0);
        data_valid         : out std_logic;
        compteur_out       : out std_logic_vector(7 downto 0);
        state_out          : out std_logic_vector(1 downto 0)
    );
end anemometre;

architecture Behavioral of anemometre is

    signal div_cnt  : unsigned(25 downto 0) := (others => '0');
    signal tick_1s  : std_logic := '0';

   

    signal pulse_cnt : unsigned(7 downto 0) := (others => '0');

    type t_state is (IDLE, MEASURE, VALID);
    signal state : t_state := IDLE;
	 
	 signal anemo_ff0 : std_logic := '0';
	 signal anemo_ff1 : std_logic := '0';
	 signal front     : std_logic := '0';

begin

    -- Génération tick 1 seconde
	process(clk_50M, raz_n)
	begin
	  if raz_n = '0' then
		 div_cnt <= (others => '0');
		 tick_1s <= '0';
	  elsif rising_edge(clk_50M) then
		 tick_1s <= '0';

		 if state = MEASURE then
			if div_cnt = to_unsigned(50_000_000 - 1, div_cnt'length) then
			  div_cnt <= (others => '0');
			  tick_1s <= '1';
			else
			  div_cnt <= div_cnt + 1;
			end if;
		 else
			-- hors mesure : on force à 0 pour que la fenêtre reparte proprement
			div_cnt <= (others => '0');
		 end if;
	  end if;
	end process;

    -- Détection front
    -- Synchronisation + détection front
	process(clk_50M, raz_n)
	begin
		 if raz_n = '0' then
			  anemo_ff0 <= '0';
			  anemo_ff1 <= '0';
		 elsif rising_edge(clk_50M) then
			  anemo_ff0 <= in_freq_anemometre;
			  anemo_ff1 <= anemo_ff0;
		 end if;
	end process;

-- Détection front montant
front <= anemo_ff0 and not anemo_ff1;
    -- Machine à état
    process(clk_50M, raz_n)
    begin
        if raz_n = '0' then
            state <= IDLE;
            pulse_cnt <= (others => '0');
            data_anemometre <= (others => '0');
            data_valid <= '0';

        elsif rising_edge(clk_50M) then

            case state is
                when IDLE =>
						data_valid <= '0';
                    pulse_cnt <= (others => '0');

                    if (continu = '0') and (start_stop = '0') then
                        data_valid <= '0';
                    end if;

                    if (continu = '1') or (start_stop = '1') then
                        state <= MEASURE;
                        pulse_cnt <= (others => '0');
                        data_valid <= '0';
                    end if;

                when MEASURE =>
						data_valid <= '0';
                    if (continu = '0') and (start_stop = '0') then
                        state <= IDLE;
                        data_valid <= '0';

                    else
                        if front = '1' then
                            if pulse_cnt /= to_unsigned(255, 8) then
                                pulse_cnt <= pulse_cnt + 1;
                            end if;
                        end if;

                        if tick_1s = '1' then
                            state <= VALID;
                        end if;
                    end if;

                when VALID =>
                    data_anemometre <= std_logic_vector(pulse_cnt);
                    data_valid <= '1';

                    if continu = '1' then
                        state <= MEASURE;
                        pulse_cnt <= (others => '0');
                    else
                        if start_stop = '0' then
                            state <= IDLE;
                            data_valid <= '0';
                        end if;
                    end if;

            end case;
        end if;
    end process;

    -- Sortie
    compteur_out <= std_logic_vector(pulse_cnt);

    with state select
        state_out <= "00" when IDLE,
                     "01" when MEASURE,
                     "10" when VALID,
                     "00" when others;

end Behavioral;