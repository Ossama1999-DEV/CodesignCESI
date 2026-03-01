#include "sys/alt_stdio.h"
#include "system.h"
#include "unistd.h"
#include <stdio.h>
#define freq (unsigned int *)AVALON_PWM_0_BASE
#define duty (unsigned int *)(AVALON_PWM_0_BASE+4)
#define control (unsigned int *)(AVALON_PWM_0_BASE+8)
#define config (unsigned int *)GESTION_ANEMOMETRE_0_BASE
#define code (unsigned int *) (GESTION_ANEMOMETRE_0_BASE+4)

int main()
{ 
  alt_putstr("Hello from Nios II!\n");
  /*******************pwm**********************************************/
  *freq = 0x2FDEF; // divise clk par 196079 pour avoir une frequence de sortie de 255 hz
  *duty = 0x0200; // RC = 50%
  *control = 0x3;
  /*************************anemometre******************************/
  *config=0x3;
  unsigned int *data_anemometre = *code & 0xFF;
  unsigned int *data_valid = (*code << 9) &1;

  /* Event loop never exits. */
  printf ("%d\n ",*data_valid);
  while (1)
  {
     printf ("%d hz\n ",*data_anemometre);
     usleep(1000000);
  }
  return 0;
}