---! Compteur 4 bits avec enable
---! Ce compteur s'incremente de 1 a chaque impulsion sur 'en' (en = 1) au rythme de l'horloge 'clk'.
---! Le compteur se remet a zero lorsque 'rst' est actif (rst = 1). 
---! Autor: DBIBIH Oussama
---! Date: 2025/12

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity compteur_en is
    -- Compteur 4 bits avec increment conditionne par en
    port (
        clk  : in  std_logic;                      -- horloge systeme
        rst  : in  std_logic;                      -- reset synchrone actif haut
        en   : in  std_logic;                      -- impulsion 1 cycle => +1
        dout : out std_logic_vector(3 downto 0)    -- valeur compteur
    );
end entity;

architecture rtl of compteur_en is
    -- Registre interne du compteur (0 a 15)
    signal count : unsigned(3 downto 0) := (others => '0');
begin
    process(clk)
    begin
        -- Logique synchrone sur front montant
        if rising_edge(clk) then
            if rst = '1' then
                -- Priorite au reset
                count <= (others => '0');
            elsif en = '1' then
                -- Increment uniquement si en = 1 (debordement naturel modulo 16)
                count <= count + 1;
            end if;
        end if;
    end process;

    -- Conversion unsigned vers std_logic_vector pour la sortie
    dout <= std_logic_vector(count);
end architecture;
