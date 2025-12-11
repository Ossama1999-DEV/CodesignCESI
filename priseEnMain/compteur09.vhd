-- compteur 0 a 9

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity compteur09 is
    port (
        clk  : in  std_logic;
        rst  : in  std_logic;
        dout : out std_logic_vector(3 downto 0)
    );
end entity compteur09;

architecture rtl of compteur09 is
    signal count : unsigned(3 downto 0) := (others => '0');
begin

    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then                      -- remise à zéro
                count <= (others => '0');
            else
                if count = "1001" then             -- 9 décimal
                    count <= (others => '0');      -- revient à 0
                else
                    count <= count + 1;            -- incrémentation
                end if;
            end if;
        end if;
    end process;

    dout <= std_logic_vector(count);                  -- conversion interne → sortie

end architecture rtl;
