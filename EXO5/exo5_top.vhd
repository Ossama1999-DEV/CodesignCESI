---! Top Exo5: anti-rebond + generation impulsion + compteur 4 bits
---! Ce top intègre une MAE anti-rebond de 20 ms pour le bouton "go", qui génère une impulsion validee de 1 cycle (go_compte_s) à chaque appui stable. 
---! Cette impulsion est ensuite utilisée pour incrémenter un compteur
---! 4 bits (compteur_en) à chaque appui sur "go". Le compteur se remet à zéro lorsque le bouton "reset" est activé.
---! Autor: DBIBIH Oussama
---! Date: 2025/12

library ieee;
use ieee.std_logic_1164.all;

entity exo5_top is
    -- Top Exo5: anti-rebond + generation impulsion + compteur 4 bits
    port (
        clk_50 : in  std_logic;                     -- horloge carte 50 MHz
        rst    : in  std_logic;                     -- bouton reset carte (actif bas)
        go     : in  std_logic;                     -- bouton go carte (actif bas)
        dout   : out std_logic_vector(3 downto 0)   -- valeur compteur
    );
end entity;

architecture rtl of exo5_top is
    -- Impulsion validee (1 cycle) envoyee au compteur
    signal go_compte_s : std_logic;
    signal go_i        : std_logic;  -- go interne actif haut
    signal rst_i       : std_logic;  -- reset interne actif haut
begin

    -- inversion des boutons (DE0-Nano : actifs bas)
    go_i  <= not go;
    rst_i <= not rst;

    -- MAE anti-rebond 20 ms:
    -- detecte un appui stable et genere go_compte sur 1 cycle
    u_mae : entity work.mae_go_20ms
        port map (
            clk       => clk_50,
            rst       => rst_i,
            go        => go_i,
            go_compte => go_compte_s
        );

    -- Compteur 4 bits incremente uniquement sur go_compte_s
    u_cnt : entity work.compteur_en
        port map (
            clk  => clk_50,
            rst  => rst_i,
            en   => go_compte_s,
            dout => dout
        );

end architecture;
