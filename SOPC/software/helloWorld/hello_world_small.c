#include "sys/alt_stdio.h"
#include <stdio.h>
#include "system.h"
#include "altera_avalon_pio_regs.h"
#include "unistd.h"
#include <stdint.h>

#define LEDS_BASE_ADDR    LEDS_BASE
#define BTN_BASE_ADDR     BOUTONS_BASE

static inline uint32_t read_buttons(void)
{
    // Beaucoup de cartes : boutons actifs bas -> on inverse
    // Si chez toi c'est actif haut, remplace par : return IORD_ALTERA_AVALON_PIO_DATA(BTN_BASE_ADDR) & 0xF;
    return (~IORD_ALTERA_AVALON_PIO_DATA(BTN_BASE_ADDR)) & 0xF; // 4 boutons
}

static inline void write_leds(uint32_t v)
{
    IOWR_ALTERA_AVALON_PIO_DATA(LEDS_BASE_ADDR, v);
}

int main(void)
{
    alt_putstr("Chenillard LEDs - Nios II OK\n");

    uint32_t leds = 0x01;      // LED0 allumée au début
    uint32_t last_btn = 0;
    uint32_t mode = 0;         // 0=chenillard, 1=pingpong
    uint32_t running = 1;
    int dir = 1;               // direction pingpong
    const useconds_t step_us = 150000; // vitesse (150 ms)

    write_leds(leds);

    while (1) {
      write_leds(0xAA);
      usleep(300000);
      write_leds(0x55);
      usleep(300000);
    }


    return 0;
}
