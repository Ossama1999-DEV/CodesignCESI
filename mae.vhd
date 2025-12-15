library ieee;
use ieee.std_logic_1164.all;

entity mae is
    port (
        clk  : in  std_logic;
        rst  : in  std_logic;   -- reset actif à '1'
        in0  : in  std_logic;
        in1  : in  std_logic;
        out1 : out std_logic
    );
end entity;

architecture rtl of mae is

    type state_t is (etat1, etat2);
    signal ep, es : state_t;  -- ep = état présent, es = état suivant

begin

    -- 1) Process d'évolution : calcule es en fonction de ep + entrées
    p_next_state : process(ep, in0, in1)
    begin
        es <= ep;  -- par défaut : reste dans le même état

        case ep is
            when etat1 =>
                if in1 = '1' then
                    es <= etat2;
                end if;

            when etat2 =>
                if in0 = '1' then
                    es <= etat1;
                end if;
        end case;
    end process;

    -- 2) Process séquentiel : met à jour l’état présent (avec reset)
    p_state_reg : process(clk, rst)
    begin
        if rst = '1' then
            ep <= etat1;
        elsif rising_edge(clk) then
            ep <= es;
        end if;
    end process;

    -- 3) Process sorties : dépend uniquement de l’état présent (Moore)
    p_outputs : process(ep)
    begin
        case ep is
            when etat1 => out1 <= '0';
            when etat2 => out1 <= '1';
        end case;
    end process;

end architecture;
