-- Compteur 0 à 9 avec période d’incrémentation = 1 seconde
-- Horloge d'entrée = 50 MHz (DE0-Nano)

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity compteur09_1s is
    port (
        clk  : in  std_logic;                   -- horloge 50 MHz
        rst  : in  std_logic;                   -- reset synchrone
        dout : out std_logic_vector(3 downto 0) -- sortie compteur
    );
end entity;

architecture rtl of compteur09_1s is

    -----------------------------
    -- 1. Diviseur d'horloge 1 Hz
    -----------------------------
    signal div_counter : unsigned(25 downto 0) := (others => '0');
    signal clk_1Hz     : std_logic := '0';

    -----------------------------
    -- 2. Compteur 0 → 9
    -----------------------------
    signal count : unsigned(3 downto 0) := (others => '0');

begin

    -------------------------------------------------------------------
    -- DIVISEUR : Génère un signal lent clk_1Hz = 1 impulsion / seconde
    -------------------------------------------------------------------
    process(clk)
    begin
        if rising_edge(clk) then
            if div_counter = 49_999_999 then      -- 50 000 000 cycles = 1 sec
                div_counter <= (others => '0');
                clk_1Hz <= not clk_1Hz;           -- bascule → periode totale = 1s
            else
                div_counter <= div_counter + 1;
            end if;
        end if;
    end process;


    ------------------------------------------------------
    -- COMPTEUR SYNCHRONE 0 → 9, piloté par clk_1Hz
    ------------------------------------------------------
    process(clk_1Hz)
    begin
        if rising_edge(clk_1Hz) then
            if rst = '1' then
                count <= (others => '0');
            else
                if count = "1001" then            -- 9 décimal
                    count <= (others => '0');
                else
                    count <= count + 1;
                end if;
            end if;
        end if;
    end process;

    dout <= std_logic_vector(count);

end architecture rtl;
