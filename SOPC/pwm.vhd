--=========================================================
-- Module : PWM (Pulse Width Modulation)
-- Objectif :
-- Générer un signal PWM dont :
--   - la fréquence est définie par l'entrée 'freq'
--   - le rapport cyclique est défini par l'entrée 'duty'
--
-- Principe :
-- Un compteur s'incrémente à chaque cycle d'horloge.
-- Lorsque le compteur atteint la valeur "freq", il repart à 0,
-- ce qui définit la période du signal PWM.
--
-- Le rapport cyclique est obtenu en comparant la valeur du
-- compteur avec la valeur "duty".
--
-- auteur : DBIBIH Oussama
--==========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity pwm is
port (
        clk, reset_n  : in std_logic;                         -- horloge système et reset actif bas
        enable        : in std_logic;                         -- activation du PWM
        freq          : in std_logic_vector (31 downto 0);    -- définit la période PWM (fréquence)
        duty          : in std_logic_vector (31 downto 0);    -- définit le rapport cyclique
        out_pwm       : out std_logic                         -- sortie PWM
        );
end entity;

ARCHITECTURE arch_pwm of pwm IS

-- Compteur principal utilisé pour générer la période du PWM
signal counter : std_logic_vector (31 downto 0);

-- Signal interne représentant l'état du PWM
signal pwm_on : std_logic;

begin

    --=========================================================
    -- Processus : génération de la période PWM
    --
    -- Le compteur s'incrémente à chaque front montant d'horloge.
    -- Lorsque la valeur "freq" est atteinte, il repart à zéro.
    --
    -- freq définit donc la période du signal PWM :
    --     période = freq * Tclk
    --=========================================================

    divide: process (clk, reset_n)
    begin
        if reset_n = '0' then 
            counter <= (others => '0');         -- remise à zéro du compteur
        elsif clk'event and clk = '1' then

            -- PWM actif uniquement si enable = '1'
            if enable = '1' then
                -- Si la limite est atteinte, on redémarre un nouveau cycle PWM
                if counter >= freq then
                    counter <= (others => '0');
                else
                    counter <= counter + 1;         -- incrémentation normale
                end if;
            else
                counter <= (others => '0');         -- reset du compteur quand désactivé
            end if;

        end if;
    end process divide;
        

    --=========================================================
    -- Processus : génération du rapport cyclique
    --
    -- Le PWM est généré en comparant le compteur avec la valeur
    -- "duty".
    --
    -- Si counter < duty  → sortie = 1
    -- Si counter ≥ duty  → sortie = 0
    --
    -- Exemple :
    -- duty = freq / 2  → PWM à 50 %
    --=========================================================

    compare: process (clk, reset_n)
    begin
        if reset_n = '0' then 
            pwm_on <= '0';                      -- sortie PWM inactive au reset

        elsif clk'event and clk = '1' then

            -- Si le PWM est désactivé, sortie à 0
            if enable = '0' then
                pwm_on <= '0';
            -- Sinon, génération normale du PWM
            else
                -- Lorsque le compteur dépasse la valeur duty,
                -- la sortie PWM passe à 0
                if counter >= duty then
                    pwm_on <= '0';

                -- Début d'un nouveau cycle PWM
                elsif counter = 0 then
                    pwm_on <= '1';

                end if;
            end if;

        end if;
    end process compare;

    -- Sortie finale PWM (inchangée si enable = '1', sinon 0)
    out_pwm <= pwm_on when enable = '1' else '0';

end arch_pwm;