/**!
 * \file hello_world_small.c
 * \brief Programme de test pour les LEDs et les boutons
 * \author DBIBIH Oussama
 * \date 2026-02-20
 */

#include "sys/alt_stdio.h"
#include <stdio.h>
#include "system.h"
#include "altera_avalon_pio_regs.h"
#include "unistd.h"
#include <stdint.h>

#define LEDS_BASE_ADDR    LEDS_BASE
#define BTN_BASE_ADDR     BOUTONS_BASE

/* ====== PWM (mémoire mappée) ====== */
#define freq (unsigned int *) PWM_0_BASE
#define duty (unsigned int *) (PWM_0_BASE + 4)
#define control (unsigned int *) (PWM_0_BASE + 8)

/* ====== Fonctions PIO ====== */
static inline uint32_t read_buttons(void)
{
    return (~IORD_ALTERA_AVALON_PIO_DATA(BTN_BASE_ADDR)) & 0xF;
}

static inline void write_leds(uint32_t v)
{
    IOWR_ALTERA_AVALON_PIO_DATA(LEDS_BASE_ADDR, v);
}

int main()
{
    /* Configuration PWM */
    *freq = 0x0400;   // divise clk par 1024
    *duty = 0x0200;   // 50%
    *control = 3;     // enable PWM

    write_leds(0x2);   // LED ON

    while(1)
    {
        // boucle infinie pour garder la LED allumée
    }

    return 0;
}
