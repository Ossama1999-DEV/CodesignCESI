---! Machine à états Moore
---! Cette machine à états a deux états : etat1 et etat2.
---! La transition etat1 → etat2 est déclenchée par une impulsion sur in1, et la transition etat2 → etat1 est déclenchée par une impulsion sur in2.
---! La sortie out1 est '0' en etat1 et '1' en etat2.
---! Autor: DBIBIH Oussama
---! Date: 2025/12

library ieee;
use ieee.std_logic_1164.all;

entity mae is
    port (
        ck   : in  std_logic;
        rst  : in  std_logic;   -- reset actif à '1'
        in1 : in  std_logic;   -- transition etat1 -> etat2
        in2 : in  std_logic;   -- transition etat2 -> etat1
        out1 : out std_logic    -- sortie Moore
    );
end entity;

architecture rtl of mae is

    -- 1) Définition des états
    type state is (etat1, etat2);

    -- 2) Etat présent / Etat suivant
    signal ep, es : state;

begin

    --------------------------------------------------------------------
    -- Process évolution (combinatoire) : calcule l'état suivant es
    -- Liste de sensibilité : ep + toutes les entrées
    --------------------------------------------------------------------
    p_evolution : process(ep, in1, in2)
    begin
        case ep is
            when etat1 =>
                if in1 = '1' then
                    es <= etat2;
                else
                    es <= etat1;
                end if;

            when etat2 =>
                if in2 = '1' then
                    es <= etat1;
                else
                    es <= etat2;
                end if;

            when others =>
                es <= etat1;  -- état initial de sécurité
        end case;
    end process;

    --------------------------------------------------------------------
    -- Process séquentiel (mémorisation) : met à jour ep
    --------------------------------------------------------------------
    p_memorisation : process(ck, rst)
    begin
        if rst = '1' then
            ep <= etat1;                    -- état initial
        elsif (ck'event and ck = '1') then  -- rising edge
            ep <= es;
        end if;
    end process;

    --------------------------------------------------------------------
    -- Process sorties (Moore) : sorties = f(ep)
    --------------------------------------------------------------------
    p_sorties : process(ep)
    begin
        case ep is
            when etat1 => out1 <= '0';
            when etat2 => out1 <= '1';
            when others => out1 <= '0';
        end case;
    end process;

end architecture rtl;
