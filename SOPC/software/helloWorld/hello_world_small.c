#include "sys/alt_stdio.h"
#include <stdio.h>
#include "system.h"
#include "altera_avalon_pio_regs.h"
#include "unistd.h"
#include <stdint.h>

#define LEDS_BASE_ADDR    LEDS_BASE
#define BTN_BASE_ADDR     BOUTONS_BASE

/* ====== PWM (mémoire mappée) ====== */
#define freq    (*(volatile unsigned int *)(PWM_0_BASE))
#define duty    (*(volatile unsigned int *)(PWM_0_BASE + 4))
#define control (*(volatile unsigned int *)(PWM_0_BASE + 8))

/* ====== Fonctions PIO ====== */
static inline uint32_t read_buttons(void)
{
    // Boutons actifs bas (le plus courant)
    return (~IORD_ALTERA_AVALON_PIO_DATA(BTN_BASE_ADDR)) & 0xF;
}

static inline void write_leds(uint32_t v)
{
    IOWR_ALTERA_AVALON_PIO_DATA(LEDS_BASE_ADDR, v);
}

int main(void)
{
    alt_putstr("PWM + LEDs + Boutons - OK\n");

    /* ====== Configuration PWM ====== */
    freq = 0x0400;     // Division horloge par 1024
    duty = 0x0200;     // 50%
    control = 0x03;    // Enable + Start

    uint32_t leds = 0x01;
    write_leds(leds);

    while (1)
    {
        uint32_t btn = read_buttons();

        /* BTN0 → 25% */
        if (btn & 0x1)
        {
            duty = freq / 4;
        }

        /* BTN1 → 50% */
        if (btn & 0x2)
        {
            duty = freq / 2;
        }

        /* BTN2 → 75% */
        if (btn & 0x4)
        {
            duty = (freq * 3) / 4;
        }

        /* BTN3 → changer fréquence */
        if (btn & 0x8)
        {
            freq = 0x0800;     // plus lent
            duty = freq / 2;
        }

        /* Petit effet LED */
        write_leds(leds);
        leds <<= 1;
        if (leds == 0)
            leds = 0x01;

        usleep(150000);
    }

    return 0;
}
