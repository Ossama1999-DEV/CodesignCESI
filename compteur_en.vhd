library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity compteur_en is
    port (
        clk  : in  std_logic;
        rst  : in  std_logic;
        en   : in  std_logic; -- impulsion 1 clk => +1
        dout : out std_logic_vector(3 downto 0)
    );
end entity;

architecture rtl of compteur_en is
    signal count : unsigned(3 downto 0) := (others => '0');
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                count <= (others => '0');
            elsif en = '1' then
                count <= count + 1; -- 0..15 
            end if;
        end if;
    end process;

    dout <= std_logic_vector(count);
end architecture;
