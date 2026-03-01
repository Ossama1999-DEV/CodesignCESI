library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mae_go_20ms is
    port (
        clk       : in  std_logic;  -- 50 MHz
        rst       : in  std_logic;
        go        : in  std_logic;  -- bouton
        go_compte : out std_logic   -- impulsion 1 clk
    );
end entity;

architecture rtl of mae_go_20ms is
    type state_t is (idle, debounce, pulse, wait_release);
    signal ep, es : state_t := idle;

    -- 20ms à 50MHz => 1_000_000 cycles
    constant T_20MS : natural := 1_000_000;
    signal timer_cnt : unsigned(19 downto 0) := (others => '0'); -- 2^20=1_048_576 > 1_000_000
    signal timer_done : std_logic := '0';
begin

    -- Timer : actif uniquement en état debounce
    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                timer_cnt  <= (others => '0');
                timer_done <= '0';
            else
                if ep = debounce then
                    if timer_cnt = to_unsigned(T_20MS-1, timer_cnt'length) then
                        timer_done <= '1';
                    else
                        timer_cnt <= timer_cnt + 1;
                        timer_done <= '0';
                    end if;
                else
                    timer_cnt  <= (others => '0');
                    timer_done <= '0';
                end if;
            end if;
        end if;
    end process;

    -- Evolution (combinatoire)
    process(ep, go, timer_done)
    begin
        es <= ep;
        case ep is
            when idle =>
                if go = '1' then
                    es <= debounce;
                end if;

            when debounce =>
                -- si relâché avant 20ms => rebond -> retour idle
                if go = '0' then
                    es <= idle;
                elsif timer_done = '1' then
                    es <= pulse;
                end if;

            when pulse =>
                es <= wait_release;

            when wait_release =>
                if go = '0' then
                    es <= idle;
                end if;
        end case;
    end process;

    -- Mémorisation
    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                ep <= idle;
            else
                ep <= es;
            end if;
        end if;
    end process;

    -- Sortie : impulsion 1 cycle
    go_compte <= '1' when ep = pulse else '0';

end architecture;
