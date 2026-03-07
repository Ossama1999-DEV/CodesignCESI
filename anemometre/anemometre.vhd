---=========================================================
-- Module : Anémomètre
-- Objectif :
-- Mesurer le nombre d'impulsions provenant d'un capteur
-- d'anémomètre pendant une fenêtre de mesure de 1 seconde.
-- auteur : DBIBIH Oussama
-- Principe :
-- 1. Compter les fronts montants du signal capteur.
-- 2. Utiliser une fenêtre temporelle de 1 seconde.
-- 3. Fournir la valeur mesurée et un signal de validation.
--=========================================================
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity anemometre is
    Port (
        clk_50M            : in  std_logic; -- horloge systeme 50 MHz
        raz_n              : in  std_logic; -- reset asynchrone actif à 0
        in_freq_anemometre : in  std_logic; -- signal capteur (freq vent)
        continu            : in  std_logic; -- mode continu
        start_stop         : in  std_logic; -- mode mesure unique

        data_anemometre    : out std_logic_vector(7 downto 0); -- resultat mesure
        data_valid         : out std_logic;                    -- validation donnée
        compteur_out       : out std_logic_vector(7 downto 0); -- debug compteur
        state_out          : out std_logic_vector(1 downto 0)  -- debug état FSM
    );
end anemometre;

architecture Behavioral of anemometre is

    -- =========================================================
    -- Générateur de fenêtre temporelle 1 seconde
    -- 50 MHz → 50 000 000 cycles = 1 seconde
    -- =========================================================
    signal div_cnt  : unsigned(25 downto 0) := (others => '0');
    signal tick_1s  : std_logic := '0';

    -- =========================================================
    -- Compteur d'impulsions provenant de l'anémomètre
    -- largeur 8 bits → max 255 impulsions par seconde
    -- =========================================================
    signal pulse_cnt : unsigned(7 downto 0) := (others => '0');

    -- =========================================================
    -- Machine à états du système
    -- IDLE    : attente démarrage
    -- MEASURE : comptage des impulsions
    -- VALID   : résultat disponible
    -- =========================================================
    type t_state is (IDLE, MEASURE, VALID);
    signal state : t_state := IDLE;

    -- =========================================================
    -- Synchronisation du signal capteur
    -- Double bascule pour éviter les problèmes de métastabilité
    -- =========================================================
    signal anemo_ff0 : std_logic := '0';
    signal anemo_ff1 : std_logic := '0';

    -- Détection du front montant
    signal front     : std_logic := '0';

begin

    -- =========================================================
    -- Génération du tick 1 seconde
    -- Le compteur est actif uniquement pendant la mesure
    -- =========================================================
	process(clk_50M, raz_n)
	begin
	  if raz_n = '0' then
		 div_cnt <= (others => '0');
		 tick_1s <= '0';

	  elsif rising_edge(clk_50M) then

		 tick_1s <= '0';

		 -- Comptage actif uniquement en phase de mesure
		 if state = MEASURE then

			if div_cnt = to_unsigned(50_000_000 - 1, div_cnt'length) then
			  div_cnt <= (others => '0');
			  tick_1s <= '1';  -- fin de la fenêtre de mesure
			else
			  div_cnt <= div_cnt + 1;
			end if;

		 else
			-- hors mesure on remet le compteur à zéro
			div_cnt <= (others => '0');
		 end if;

	  end if;
	end process;


    -- =========================================================
    -- Synchronisation du signal capteur
    -- Permet d'éviter les problèmes de métastabilité
    -- lors de l'entrée d'un signal asynchrone dans le FPGA
    -- =========================================================
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


    -- =========================================================
    -- Détection du front montant du capteur
    -- =========================================================
    front <= anemo_ff0 and not anemo_ff1;


    -- =========================================================
    -- Machine à états principale
    -- Gère le cycle de mesure
    -- =========================================================
    process(clk_50M, raz_n)
    begin

        if raz_n = '0' then
            state <= IDLE;
            pulse_cnt <= (others => '0');
            data_anemometre <= (others => '0');
            data_valid <= '0';

        elsif rising_edge(clk_50M) then

            case state is

                -- ==============================
                -- Etat attente
                -- ==============================
                when IDLE =>

                    data_valid <= '0';
                    pulse_cnt <= (others => '0');

                    -- démarrage mesure
                    if (continu = '1') or (start_stop = '1') then
                        state <= MEASURE;
                        pulse_cnt <= (others => '0');
                    end if;


                -- ==============================
                -- Etat mesure
                -- ==============================
                when MEASURE =>

                    data_valid <= '0';

                    -- arrêt mesure si stop
                    if (continu = '0') and (start_stop = '0') then
                        state <= IDLE;

                    else

                        -- incrémentation sur chaque front capteur
                        if front = '1' then
                            if pulse_cnt /= to_unsigned(255, 8) then
                                pulse_cnt <= pulse_cnt + 1;
                            end if;
                        end if;

                        -- fin de la fenêtre de mesure
                        if tick_1s = '1' then
                            state <= VALID;
                        end if;

                    end if;


                -- ==============================
                -- Etat validation
                -- ==============================
                when VALID =>

                    -- publication du résultat
                    data_anemometre <= std_logic_vector(pulse_cnt);
                    data_valid <= '1';

                    -- mode continu → nouvelle mesure
                    if continu = '1' then
                        state <= MEASURE;
                        pulse_cnt <= (others => '0');

                    -- mode start/stop → attente stop
                    else
                        if start_stop = '0' then
                            state <= IDLE;
                            data_valid <= '0';
                        end if;
                    end if;

            end case;

        end if;

    end process;


    -- =========================================================
    -- Sorties de debug
    -- =========================================================

    -- valeur actuelle du compteur d'impulsions
    compteur_out <= std_logic_vector(pulse_cnt);

    -- codage de l'état de la FSM pour observation externe
    with state select
        state_out <= "00" when IDLE,
                     "01" when MEASURE,
                     "10" when VALID,
                     "00" when others;

end Behavioral;