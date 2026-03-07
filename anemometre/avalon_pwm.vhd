--- ============================================================
-- Module VHDL : avalon_pwm
-- Description : Générateur de signal PWM configurable via le bus Avalon
-- Auteur : DBIBIH oussama
-- Date : 2026-02
-- ============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;

-- ============================================================
-- Composant PWM connecté au bus Avalon
-- Permet au processeur NIOS II de configurer dynamiquement :
--   - la fréquence du signal PWM (registre freq)
--   - le rapport cyclique (registre duty)
--   - l'activation / contrôle du module (registre control)
-- ============================================================

entity avalon_pwm is
port (
        clk, chipselect, write_n, reset_n : in std_logic;  -- signaux du bus Avalon
        writedata : in std_logic_vector (31 downto 0);      -- données écrites par le processeur
        readdata : out std_logic_vector (31 downto 0);      -- données lues par le processeur
        address: std_logic_vector (1 downto 0);             -- sélection du registre
        out_pwm : out std_logic                             -- sortie PWM générée
        );
end entity;

ARCHITECTURE arch_avalon_pwm of avalon_pwm IS

-- ============================================================
-- Registres configurables via le bus Avalon
-- ============================================================

signal freq : std_logic_vector (31 downto 0);      -- valeur maximale du compteur → fixe la fréquence PWM
signal duty : std_logic_vector (31 downto 0);      -- valeur du rapport cyclique
signal counter : std_logic_vector (31 downto 0);   -- compteur interne
signal control : std_logic_vector (1 downto 0);    -- bits de contrôle
                                                   -- control(0) : enable PWM
                                                   -- control(1) : autorisation du comptage
signal pwm_on : std_logic;                         -- signal interne PWM

begin

    -- ============================================================
    -- Compteur principal du générateur PWM
    -- Le compteur s'incrémente jusqu'à la valeur "freq"
    -- puis repart à zéro. Cela définit la période du PWM.
    -- ============================================================

    divide: process (clk, reset_n)
    begin
        -- Si le module est désactivé (control(0)=0), on remet le compteur à zéro
        if control(0) = '0' then 
            counter <= (others => '0');

        elsif clk'event and clk = '1' then

            -- Comptage actif uniquement si control(1)=1
            if control(1) ='1' then

                -- Lorsque la valeur freq est atteinte, le compteur repart à zéro
                if counter >= freq then
                    counter <= (others => '0');
                else
                    counter <= counter + 1;
                end if;

            end if;
        end if;
    end process divide;
        

    -- ============================================================
    -- Génération du signal PWM
    -- Compare la valeur du compteur avec la valeur duty
    -- ============================================================

    compare: process (clk, reset_n)
    begin

        -- Si le module est désactivé
        if control(0) = '0' then
            pwm_on <= '1';

        elsif clk'event and clk = '1' then

            -- Lorsque le compteur dépasse duty → sortie à 0
            if counter >= duty then
                pwm_on <= '0';

            -- Au début d'un nouveau cycle → sortie à 1
            elsif counter = 0 then
                pwm_on <= '1';

            end if;
        end if;
    end process compare;

    -- Sortie finale PWM (active uniquement si module activé)
    out_pwm <= pwm_on and control(0);


-- ============================================================
-- Interface Avalon
-- Permet au processeur NIOS II d'accéder aux registres
-- ============================================================


-- ============================================================
-- Écriture des registres depuis le processeur
-- chipselect = 1 : périphérique sélectionné
-- write_n = 0    : opération d'écriture
-- ============================================================

    process_write: process (clk, reset_n)
    begin
        if reset_n = '0' then

            -- Reset des registres
            freq <= (others => '0');
            duty <= (others => '0');
            control <= (others => '0');

        elsif clk'event and clk = '1' then

            -- Écriture seulement si le périphérique est sélectionné
            if chipselect ='1' and write_n = '0' then

                -- Registre fréquence
                if address = "00" then
                    freq <= writedata;
                end if;

                -- Registre duty cycle
                if address = "01" then
                    duty <= writedata;
                end if;

                -- Registre de contrôle
                if address = "10" then
                    control <= writedata (1 downto 0);
                end if;

            end if;
        end if; 
    end process;
        

-- ============================================================
-- Lecture des registres par le processeur
-- Permet de récupérer les valeurs internes du module
-- ============================================================

    process_Read:process(address, freq, duty, control) 
    begin
        case address is

            -- Lecture fréquence
            when "00" => readdata <= freq ;

            -- Lecture duty cycle
            when "01" => readdata <= duty ;

            -- Lecture registre contrôle
            when "10" => readdata <= X"0000000"&"00"&control ;

            -- Valeur par défaut
            when others => readdata <= (others => '0');   

        end case;
    end process process_Read ;
    
end arch_avalon_pwm ;