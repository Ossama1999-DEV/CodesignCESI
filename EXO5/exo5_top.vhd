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
    signal go_i        : std_logic;  -- go interne actif haut
    signal rst_i       : std_logic;
begin

    -- inversion des boutons (DE0-Nano : actifs bas)
    go_i  <= not go;
    rst_i <= not rst;  -- si reset actif bas

    u_mae : entity work.mae_go_20ms
        port map (
            clk       => clk_50,
            rst       => rst_i,
            go        => go_i,
            go_compte => go_compte_s
        );

    u_cnt : entity work.compteur_en
        port map (
            clk  => clk_50,
            rst  => rst_i,
            en   => go_compte_s,
            dout => dout
        );

end architecture;
