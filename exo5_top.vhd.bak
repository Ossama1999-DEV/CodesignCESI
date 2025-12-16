library ieee;
use ieee.std_logic_1164.all;

entity exo5_top is
    port (
        clk_50 : in  std_logic;
        rst    : in  std_logic;
        go     : in  std_logic;
        dout   : out std_logic_vector(3 downto 0)
    );
end entity;

architecture rtl of exo5_top is
    signal go_compte_s : std_logic;
begin

    u_mae : entity work.mae_go_20ms
        port map (
            clk       => clk_50,
            rst       => rst,
            go        => go,
            go_compte => go_compte_s
        );

    u_cnt : entity work.compteur_en
        port map (
            clk  => clk_50,
            rst  => rst,
            en   => go_compte_s,
            dout => dout
        );

end architecture;
