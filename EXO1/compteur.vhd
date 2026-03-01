---! Compteur 4 bits
---! Ce compteur s'incremente de 1 a chaque impulsion sur l'horloge 'clk' et se remet a zero lorsque 'rst' est actif (rst = 1).
---! Autor: DBIBIH Oussama
---! Date: 2026/12

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity compteur is
    port (
        clk   : in  std_logic;                      -- horloge 50 MHz
        rst   : in  std_logic;                      -- reset synchrone actif à '1'
        dout     : out std_logic_vector(3 downto 0)    -- sortie du compteur
    );
end entity compteur;

architecture rtl of compteur is
    signal count : unsigned(3 downto 0) := (others => '0');
begin

    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then                      -- remise à zéro
                count <= (others => '0');
            else
                if count = "1111" then             -- 15 décimal
                    count <= (others => '0');      -- revient à 0
                else
                    count <= count + 1;            -- incrémentation
                end if;
            end if;
        end if;
    end process;

    dout <= std_logic_vector(count);                  -- conversion interne → sortie

end architecture rtl;
